class Account::Investment < ApplicationRecord
  include Accountable

  SUBTYPES = [
    [ "Pension", "pension" ],
    [ "Retirement", "retirement" ],
    [ "Health Savings Account", "hsa" ],
    [ "Mutual Fund", "mutual_fund" ],
    [ "Stocks", "stocks" ],
    [ "Bonds", "bonds" ],
    [ "EPF", "epf" ],
    [ "PPF", "ppf" ],
    [ "NPS", "nps" ]
  ].freeze
end
