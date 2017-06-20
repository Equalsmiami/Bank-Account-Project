require './bank_account'

describe BankAccount do
  context "has a balance" do

    it "is created with an opening balance and the name of the client" do
      account = BankAccount.new(500, 'Sarah')
      expect(account).to be_a(BankAccount)
    end

    it "can report it's balance" do
    account = BankAccount.new(500, 'Sarah')
    expect(account.balance).to eq(500)
    end
  end

  context "making a deposit" do
    account = BankAccount.new(500, "Sarah")
    account.deposit(500)

    it "balance is increased" do
    expect(account.balance).to eq(1000)
    end

  end

  context "making a withdrawal" do
    account = BankAccount.new(500, "Sarah")
    account.withdraw(200)

    it "balance is decreased" do
    expect(account.balance).to eq(300)
    end
  end

  context "transfering funds" do
    account = BankAccount.new(500, "Sarah")
    other_account = BankAccount.new(1000, "Todd")
    account.transfer(200, other_account)

    it "account balance is decreased" do
    expect(account.balance).to eq(300)
    end

    it "other account balance is increased" do
    expect(other_account.balance).to eq(1200)
    end

  end

  context "minimum balance" do
      it "allows the user to change the minimum balance" do
      BankAccount.minimum_balance = 500
      expect { BankAccount.new(300, "Sarah") }.to raise_error(ArgumentError)
      expect { BankAccount.new(500, "Sarah") }.to_not raise_error(ArgumentError)
      end
  end
end
