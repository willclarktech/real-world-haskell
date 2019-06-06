data BookInfo = Book Int String [String]
    deriving (Show)

data MagazineInfo = Magazine Int String [String]
    deriving (Show)

myInfo = Book 92984798720 "Some cool book title" ["Mr Hello", "Ms World"]

type CustomerID = Int
type ReviewBody = String

data BookReview = BookReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo =
    CreditCard CardNumber CardHolder Address
    | CashOnDelivery
    | Invoice CustomerID
    deriving (Show)

bookID (Book id _ _) = id
bookTitle (Book _ title _) = title
bookAuthors (Book _ _ authors) = authors

data Customer = Customer
    { customerID :: CustomerID
    , customerName :: String
    , customerAddress :: [String]
    } deriving (Show)

customer1 = Customer 271 "Jo" ["23 St St"]
customer2 = Customer
    { customerAddress = ["14A Brick Lane"]
    , customerName = "wint"
    , customerID = 456
    }
