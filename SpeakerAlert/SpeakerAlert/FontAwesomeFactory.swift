//
//  FontAwesomeFactory.swift
//  SpeakerAlert
//
//  Created by Thomas Elliott on 7/26/15.
//  Copyright © 2015 The Other Tom Elliott. All rights reserved.
//

import UIKit
import FontAwesome_swift

// swiftlint:disable type_body_length
// swiftlint:disable file_length
class FontAwesomeFactory: NSObject {

    // Map strings to the FontAwesome reference
    static var fontAwesomeMapping: [String: FontAwesome] = [
        "Adjust": FontAwesome.Adjust,
        "ADN": FontAwesome.ADN,
        "AlignCenter": FontAwesome.AlignCenter,
        "AlignJustify": FontAwesome.AlignJustify,
        "AlignLeft": FontAwesome.AlignLeft,
        "AlignRight": FontAwesome.AlignRight,
        "Ambulance": FontAwesome.Ambulance,
        "Anchor": FontAwesome.Anchor,
        "Android": FontAwesome.Android,
        "Angellist": FontAwesome.Angellist,
        "AngleDoubleDown": FontAwesome.AngleDoubleDown,
        "AngleDoubleLeft": FontAwesome.AngleDoubleLeft,
        "AngleDoubleRight": FontAwesome.AngleDoubleRight,
        "AngleDoubleUp": FontAwesome.AngleDoubleUp,
        "AngleDown": FontAwesome.AngleDown,
        "AngleLeft": FontAwesome.AngleLeft,
        "AngleRight": FontAwesome.AngleRight,
        "AngleUp": FontAwesome.AngleUp,
        "Apple": FontAwesome.Apple,
        "Archive": FontAwesome.Archive,
        "AreaChart": FontAwesome.AreaChart,
        "ArrowCircleDown": FontAwesome.ArrowCircleDown,
        "ArrowCircleLeft": FontAwesome.ArrowCircleLeft,
        "ArrowCircleODown": FontAwesome.ArrowCircleODown,
        "ArrowCircleOLeft": FontAwesome.ArrowCircleOLeft,
        "ArrowCircleORight": FontAwesome.ArrowCircleORight,
        "ArrowCircleOUp": FontAwesome.ArrowCircleOUp,
        "ArrowCircleRight": FontAwesome.ArrowCircleRight,
        "ArrowCircleUp": FontAwesome.ArrowCircleUp,
        "ArrowDown": FontAwesome.ArrowDown,
        "ArrowLeft": FontAwesome.ArrowLeft,
        "ArrowRight": FontAwesome.ArrowRight,
        "ArrowUp": FontAwesome.ArrowUp,
        "Arrows": FontAwesome.Arrows,
        "ArrowsAlt": FontAwesome.ArrowsAlt,
        "ArrowsH": FontAwesome.ArrowsH,
        "ArrowsV": FontAwesome.ArrowsV,
        "Asterisk": FontAwesome.Asterisk,
        "At": FontAwesome.At,
        "Automobile": FontAwesome.Automobile,
        "Backward": FontAwesome.Backward,
        "Ban": FontAwesome.Ban,
        "Bank": FontAwesome.Bank,
        "BarChart": FontAwesome.BarChart,
        "BarChartO": FontAwesome.BarChartO,
        "Barcode": FontAwesome.Barcode,
        "Bars": FontAwesome.Bars,
        "Bed": FontAwesome.Bed,
        "Beer": FontAwesome.Beer,
        "Behance": FontAwesome.Behance,
        "BehanceSquare": FontAwesome.BehanceSquare,
        "Bell": FontAwesome.Bell,
        "BellO": FontAwesome.BellO,
        "BellSlash": FontAwesome.BellSlash,
        "BellSlashO": FontAwesome.BellSlashO,
        "Bicycle": FontAwesome.Bicycle,
        "Binoculars": FontAwesome.Binoculars,
        "BirthdayCake": FontAwesome.BirthdayCake,
        "Bitbucket": FontAwesome.Bitbucket,
        "BitbucketSquare": FontAwesome.BitbucketSquare,
        "Bitcoin": FontAwesome.Bitcoin,
        "Bold": FontAwesome.Bold,
        "Bolt": FontAwesome.Bolt,
        "Bomb": FontAwesome.Bomb,
        "Book": FontAwesome.Book,
        "Bookmark": FontAwesome.Bookmark,
        "BookmarkO": FontAwesome.BookmarkO,
        "Briefcase": FontAwesome.Briefcase,
        "Btc": FontAwesome.Btc,
        "Bug": FontAwesome.Bug,
        "Building": FontAwesome.Building,
        "BuildingO": FontAwesome.BuildingO,
        "Bullhorn": FontAwesome.Bullhorn,
        "Bullseye": FontAwesome.Bullseye,
        "Bus": FontAwesome.Bus,
        "Buysellads": FontAwesome.Buysellads,
        "Cab": FontAwesome.Cab,
        "Calculator": FontAwesome.Calculator,
        "Calendar": FontAwesome.Calendar,
        "CalendarO": FontAwesome.CalendarO,
        "Camera": FontAwesome.Camera,
        "CameraRetro": FontAwesome.CameraRetro,
        "Car": FontAwesome.Car,
        "CaretDown": FontAwesome.CaretDown,
        "CaretLeft": FontAwesome.CaretLeft,
        "CaretRight": FontAwesome.CaretRight,
        "CaretSquareODown": FontAwesome.CaretSquareODown,
        "CaretSquareOLeft": FontAwesome.CaretSquareOLeft,
        "CaretSquareORight": FontAwesome.CaretSquareORight,
        "CaretSquareOUp": FontAwesome.CaretSquareOUp,
        "CaretUp": FontAwesome.CaretUp,
        "CartArrowDown": FontAwesome.CartArrowDown,
        "CartPlus": FontAwesome.CartPlus,
        "Cc": FontAwesome.Cc,
        "CCAmex": FontAwesome.CCAmex,
        "CCDiscover": FontAwesome.CCDiscover,
        "CCMastercard": FontAwesome.CCMastercard,
        "CCPaypal": FontAwesome.CCPaypal,
        "CCStripe": FontAwesome.CCStripe,
        "CCVisa": FontAwesome.CCVisa,
        "Certificate": FontAwesome.Certificate,
        "Chain": FontAwesome.Chain,
        "ChainBroken": FontAwesome.ChainBroken,
        "Check": FontAwesome.Check,
        "CheckCircle": FontAwesome.CheckCircle,
        "CheckCircleO": FontAwesome.CheckCircleO,
        "CheckSquare": FontAwesome.CheckSquare,
        "CheckSquareO": FontAwesome.CheckSquareO,
        "ChevronCircleDown": FontAwesome.ChevronCircleDown,
        "ChevronCircleLeft": FontAwesome.ChevronCircleLeft,
        "ChevronCircleRight": FontAwesome.ChevronCircleRight,
        "ChevronCircleUp": FontAwesome.ChevronCircleUp,
        "ChevronDown": FontAwesome.ChevronDown,
        "ChevronLeft": FontAwesome.ChevronLeft,
        "ChevronRight": FontAwesome.ChevronRight,
        "ChevronUp": FontAwesome.ChevronUp,
        "Child": FontAwesome.Child,
        "Circle": FontAwesome.Circle,
        "CircleO": FontAwesome.CircleO,
        "CircleONotch": FontAwesome.CircleONotch,
        "CircleThin": FontAwesome.CircleThin,
        "Clipboard": FontAwesome.Clipboard,
        "ClockO": FontAwesome.ClockO,
        "Close": FontAwesome.Close,
        "Cloud": FontAwesome.Cloud,
        "CloudDownload": FontAwesome.CloudDownload,
        "CloudUpload": FontAwesome.CloudUpload,
        "CNY": FontAwesome.CNY,
        "Code": FontAwesome.Code,
        "CodeFork": FontAwesome.CodeFork,
        "Codepen": FontAwesome.Codepen,
        "Coffee": FontAwesome.Coffee,
        "Cog": FontAwesome.Cog,
        "Cogs": FontAwesome.Cogs,
        "Columns": FontAwesome.Columns,
        "Comment": FontAwesome.Comment,
        "CommentO": FontAwesome.CommentO,
        "Comments": FontAwesome.Comments,
        "CommentsO": FontAwesome.CommentsO,
        "Compass": FontAwesome.Compass,
        "Compress": FontAwesome.Compress,
        "Connectdevelop": FontAwesome.Connectdevelop,
        "Copy": FontAwesome.Copy,
        "Copyright": FontAwesome.Copyright,
        "CreditCard": FontAwesome.CreditCard,
        "Crop": FontAwesome.Crop,
        "Crosshairs": FontAwesome.Crosshairs,
        "Css3": FontAwesome.Css3,
        "Cube": FontAwesome.Cube,
        "Cubes": FontAwesome.Cubes,
        "Cut": FontAwesome.Cut,
        "Cutlery": FontAwesome.Cutlery,
        "Dashboard": FontAwesome.Dashboard,
        "Dashcube": FontAwesome.Dashcube,
        "Database": FontAwesome.Database,
        "Dedent": FontAwesome.Dedent,
        "Delicious": FontAwesome.Delicious,
        "Desktop": FontAwesome.Desktop,
        "Deviantart": FontAwesome.Deviantart,
        "Diamond": FontAwesome.Diamond,
        "Digg": FontAwesome.Digg,
        "Dollar": FontAwesome.Dollar,
        "DotCircleO": FontAwesome.DotCircleO,
        "Download": FontAwesome.Download,
        "Dribbble": FontAwesome.Dribbble,
        "Dropbox": FontAwesome.Dropbox,
        "Drupal": FontAwesome.Drupal,
        "Edit": FontAwesome.Edit,
        "Eject": FontAwesome.Eject,
        "EllipsisH": FontAwesome.EllipsisH,
        "EllipsisV": FontAwesome.EllipsisV,
        "Empire": FontAwesome.Empire,
        "Envelope": FontAwesome.Envelope,
        "EnvelopeO": FontAwesome.EnvelopeO,
        "EnvelopeSquare": FontAwesome.EnvelopeSquare,
        "Eraser": FontAwesome.Eraser,
        "EUR": FontAwesome.EUR,
        "Euro": FontAwesome.Euro,
        "Exchange": FontAwesome.Exchange,
        "Exclamation": FontAwesome.Exclamation,
        "ExclamationCircle": FontAwesome.ExclamationCircle,
        "ExclamationTriangle": FontAwesome.ExclamationTriangle,
        "Expand": FontAwesome.Expand,
        "ExternalLink": FontAwesome.ExternalLink,
        "ExternalLinkSquare": FontAwesome.ExternalLinkSquare,
        "Eye": FontAwesome.Eye,
        "EyeSlash": FontAwesome.EyeSlash,
        "Eyedropper": FontAwesome.Eyedropper,
        "Facebook": FontAwesome.Facebook,
        "FacebookF": FontAwesome.FacebookF,
        "FacebookOfficial": FontAwesome.FacebookOfficial,
        "FacebookSquare": FontAwesome.FacebookSquare,
        "FastBackward": FontAwesome.FastBackward,
        "FastForward": FontAwesome.FastForward,
        "Fax": FontAwesome.Fax,
        "Female": FontAwesome.Female,
        "FighterJet": FontAwesome.FighterJet,
        "File": FontAwesome.File,
        "FileArchiveO": FontAwesome.FileArchiveO,
        "FileAudioO": FontAwesome.FileAudioO,
        "FileCodeO": FontAwesome.FileCodeO,
        "FileExcelO": FontAwesome.FileExcelO,
        "FileImageO": FontAwesome.FileImageO,
        "FileMoviO": FontAwesome.FileMoviO,
        "FileO": FontAwesome.FileO,
        "FilePdfO": FontAwesome.FilePdfO,
        "FilePhotoO": FontAwesome.FilePhotoO,
        "FilePictureO": FontAwesome.FilePictureO,
        "FilePowerpointO": FontAwesome.FilePowerpointO,
        "FileSoundO": FontAwesome.FileSoundO,
        "FileText": FontAwesome.FileText,
        "FileTextO": FontAwesome.FileTextO,
        "FileVideoO": FontAwesome.FileVideoO,
        "FileWordO": FontAwesome.FileWordO,
        "FileZipO": FontAwesome.FileZipO,
        "FilesO": FontAwesome.FilesO,
        "Film": FontAwesome.Film,
        "Filter": FontAwesome.Filter,
        "Fire": FontAwesome.Fire,
        "FireExtinguisher": FontAwesome.FireExtinguisher,
        "Flag": FontAwesome.Flag,
        "FlagCheckered": FontAwesome.FlagCheckered,
        "FlagO": FontAwesome.FlagO,
        "Flash": FontAwesome.Flash,
        "Flask": FontAwesome.Flask,
        "Flickr": FontAwesome.Flickr,
        "FloppyO": FontAwesome.FloppyO,
        "Folder": FontAwesome.Folder,
        "FolderO": FontAwesome.FolderO,
        "FolderOpen": FontAwesome.FolderOpen,
        "FolderOpenO": FontAwesome.FolderOpenO,
        "Font": FontAwesome.Font,
        "Forumbee": FontAwesome.Forumbee,
        "Forward": FontAwesome.Forward,
        "Foursquare": FontAwesome.Foursquare,
        "FrownO": FontAwesome.FrownO,
        "FutbolO": FontAwesome.FutbolO,
        "Gamepad": FontAwesome.Gamepad,
        "Gavel": FontAwesome.Gavel,
        "Gbp": FontAwesome.Gbp,
        "Ge": FontAwesome.Ge,
        "Gear": FontAwesome.Gear,
        "Gears": FontAwesome.Gears,
        "Genderless": FontAwesome.Genderless,
        "Gift": FontAwesome.Gift,
        "Git": FontAwesome.Git,
        "GitSquare": FontAwesome.GitSquare,
        "Github": FontAwesome.Github,
        "GithubAlt": FontAwesome.GithubAlt,
        "GithubSquare": FontAwesome.GithubSquare,
        "Gittip": FontAwesome.Gittip,
        "Glass": FontAwesome.Glass,
        "Globe": FontAwesome.Globe,
        "Google": FontAwesome.Google,
        "GooglePlus": FontAwesome.GooglePlus,
        "GooglePlusSquare": FontAwesome.GooglePlusSquare,
        "GoogleWallet": FontAwesome.GoogleWallet,
        "GraduationCap": FontAwesome.GraduationCap,
        "Gratipay": FontAwesome.Gratipay,
        "Group": FontAwesome.Group,
        "HSquare": FontAwesome.HSquare,
        "HackerNews": FontAwesome.HackerNews,
        "HandODown": FontAwesome.HandODown,
        "HandOLeft": FontAwesome.HandOLeft,
        "HandORight": FontAwesome.HandORight,
        "HandOUp": FontAwesome.HandOUp,
        "HddO": FontAwesome.HddO,
        "Header": FontAwesome.Header,
        "Headphones": FontAwesome.Headphones,
        "Heart": FontAwesome.Heart,
        "HeartO": FontAwesome.HeartO,
        "Heartbeat": FontAwesome.Heartbeat,
        "History": FontAwesome.History,
        "Home": FontAwesome.Home,
        "HospitalO": FontAwesome.HospitalO,
        "Hotel": FontAwesome.Hotel,
        "Html5": FontAwesome.Html5,
        "Ils": FontAwesome.Ils,
        "Image": FontAwesome.Image,
        "Inbox": FontAwesome.Inbox,
        "Indent": FontAwesome.Indent,
        "Info": FontAwesome.Info,
        "InfoCircle": FontAwesome.InfoCircle,
        "Inr": FontAwesome.Inr,
        "Instagram": FontAwesome.Instagram,
        "Institution": FontAwesome.Institution,
        "Ioxhost": FontAwesome.Ioxhost,
        "Italic": FontAwesome.Italic,
        "Joomla": FontAwesome.Joomla,
        "JPY": FontAwesome.JPY,
        "Jsfiddle": FontAwesome.Jsfiddle,
        "Key": FontAwesome.Key,
        "KeyboardO": FontAwesome.KeyboardO,
        "Krw": FontAwesome.Krw,
        "Language": FontAwesome.Language,
        "Laptop": FontAwesome.Laptop,
        "LastFM": FontAwesome.LastFM,
        "LastFMSquare": FontAwesome.LastFMSquare,
        "Leaf": FontAwesome.Leaf,
        "Leanpub": FontAwesome.Leanpub,
        "Legal": FontAwesome.Legal,
        "LemonO": FontAwesome.LemonO,
        "LevelDown": FontAwesome.LevelDown,
        "LevelUp": FontAwesome.LevelUp,
        "LifeBouy": FontAwesome.LifeBouy,
        "LifeBuoy": FontAwesome.LifeBuoy,
        "LifeRing": FontAwesome.LifeRing,
        "LifeSaver": FontAwesome.LifeSaver,
        "LightbulbO": FontAwesome.LightbulbO,
        "LineChart": FontAwesome.LineChart,
        "Link": FontAwesome.Link,
        "LinkedIn": FontAwesome.LinkedIn,
        "LinkedInSquare": FontAwesome.LinkedInSquare,
        "Linux": FontAwesome.Linux,
        "List": FontAwesome.List,
        "ListAlt": FontAwesome.ListAlt,
        "ListOL": FontAwesome.ListOL,
        "ListUL": FontAwesome.ListUL,
        "LocationArrow": FontAwesome.LocationArrow,
        "Lock": FontAwesome.Lock,
        "LongArrowDown": FontAwesome.LongArrowDown,
        "LongArrowLeft": FontAwesome.LongArrowLeft,
        "LongArrowRight": FontAwesome.LongArrowRight,
        "LongArrowUp": FontAwesome.LongArrowUp,
        "Magic": FontAwesome.Magic,
        "Magnet": FontAwesome.Magnet,
        "MailForward": FontAwesome.MailForward,
        "MailReply": FontAwesome.MailReply,
        "MailReplyAll ": FontAwesome.MailReplyAll ,
        "Male": FontAwesome.Male,
        "MapMarker": FontAwesome.MapMarker,
        "Mars": FontAwesome.Mars,
        "MarsDouble": FontAwesome.MarsDouble,
        "MarsStroke": FontAwesome.MarsStroke,
        "MarsStrokeH": FontAwesome.MarsStrokeH,
        "MarsStrokeV": FontAwesome.MarsStrokeV,
        "Maxcdn": FontAwesome.Maxcdn,
        "Meanpath": FontAwesome.Meanpath,
        "Medium": FontAwesome.Medium,
        "Medkit": FontAwesome.Medkit,
        "MehO": FontAwesome.MehO,
        "Mercury": FontAwesome.Mercury,
        "Microphone": FontAwesome.Microphone,
        "MicrophoneSlash": FontAwesome.MicrophoneSlash,
        "Minus": FontAwesome.Minus,
        "MinusCircle": FontAwesome.MinusCircle,
        "MinusSquare": FontAwesome.MinusSquare,
        "MinusSquareO": FontAwesome.MinusSquareO,
        "Mobile": FontAwesome.Mobile,
        "MobilePhone": FontAwesome.MobilePhone,
        "Money": FontAwesome.Money,
        "MoonO": FontAwesome.MoonO,
        "MortarBoard": FontAwesome.MortarBoard,
        "Motorcycle": FontAwesome.Motorcycle,
        "Music": FontAwesome.Music,
        "Navicon": FontAwesome.Navicon,
        "Neuter": FontAwesome.Neuter,
        "NewspaperO": FontAwesome.NewspaperO,
        "Openid": FontAwesome.Openid,
        "Outdent": FontAwesome.Outdent,
        "Pagelines": FontAwesome.Pagelines,
        "PaintBrush": FontAwesome.PaintBrush,
        "PaperPlane": FontAwesome.PaperPlane,
        "PaperPlaneO": FontAwesome.PaperPlaneO,
        "Paperclip": FontAwesome.Paperclip,
        "Paragraph": FontAwesome.Paragraph,
        "Paste": FontAwesome.Paste,
        "Pause": FontAwesome.Pause,
        "Paw": FontAwesome.Paw,
        "Paypal": FontAwesome.Paypal,
        "Pencil": FontAwesome.Pencil,
        "PencilSquare": FontAwesome.PencilSquare,
        "PencilSquareO": FontAwesome.PencilSquareO,
        "Phone": FontAwesome.Phone,
        "PhoneSquare": FontAwesome.PhoneSquare,
        "Photo": FontAwesome.Photo,
        "PictureO": FontAwesome.PictureO,
        "PieChart": FontAwesome.PieChart,
        "PiedPiper": FontAwesome.PiedPiper,
        "PiedPiperAlt": FontAwesome.PiedPiperAlt,
        "Pinterest": FontAwesome.Pinterest,
        "PinterestP": FontAwesome.PinterestP,
        "PinterestSquare": FontAwesome.PinterestSquare,
        "Plane": FontAwesome.Plane,
        "Play": FontAwesome.Play,
        "PlayCircle": FontAwesome.PlayCircle,
        "PlayCircleO": FontAwesome.PlayCircleO,
        "Plug": FontAwesome.Plug,
        "Plus": FontAwesome.Plus,
        "PlusCircle": FontAwesome.PlusCircle,
        "PlusSquare": FontAwesome.PlusSquare,
        "PlusSquareO": FontAwesome.PlusSquareO,
        "PowerOff": FontAwesome.PowerOff,
        "Print": FontAwesome.Print,
        "PuzzlePiece": FontAwesome.PuzzlePiece,
        "Qq": FontAwesome.Qq,
        "Qrcode": FontAwesome.Qrcode,
        "Question": FontAwesome.Question,
        "QuestionCircle": FontAwesome.QuestionCircle,
        "QuoteLeft": FontAwesome.QuoteLeft,
        "QuoteRight": FontAwesome.QuoteRight,
        "Ra": FontAwesome.Ra,
        "Random": FontAwesome.Random,
        "Rebel": FontAwesome.Rebel,
        "Recycle": FontAwesome.Recycle,
        "Reddit": FontAwesome.Reddit,
        "RedditSquare": FontAwesome.RedditSquare,
        "Refresh": FontAwesome.Refresh,
        "Remove": FontAwesome.Remove,
        "Renren": FontAwesome.Renren,
        "Reorder": FontAwesome.Reorder,
        "Repeat": FontAwesome.Repeat,
        "Reply": FontAwesome.Reply,
        "ReplyAll": FontAwesome.ReplyAll,
        "Retweet": FontAwesome.Retweet,
        "RMB": FontAwesome.RMB,
        "Road": FontAwesome.Road,
        "Rocket": FontAwesome.Rocket,
        "RotateLeft": FontAwesome.RotateLeft,
        "RotateRight": FontAwesome.RotateRight,
        "Rouble": FontAwesome.Rouble,
        "Rss": FontAwesome.Rss,
        "RssSquare": FontAwesome.RssSquare,
        "RUB": FontAwesome.RUB,
        "Ruble": FontAwesome.Ruble,
        "Rupee": FontAwesome.Rupee,
        "Save": FontAwesome.Save,
        "Scissors": FontAwesome.Scissors,
        "Search": FontAwesome.Search,
        "SearchMinus": FontAwesome.SearchMinus,
        "SearchPlus": FontAwesome.SearchPlus,
        "Sellsy": FontAwesome.Sellsy,
        "Send": FontAwesome.Send,
        "SendO": FontAwesome.SendO,
        "Server": FontAwesome.Server,
        "Share": FontAwesome.Share,
        "ShareAlt": FontAwesome.ShareAlt,
        "ShareAltSquare": FontAwesome.ShareAltSquare,
        "ShareSquare": FontAwesome.ShareSquare,
        "ShareSquareO": FontAwesome.ShareSquareO,
        "Shekel": FontAwesome.Shekel,
        "Sheqel": FontAwesome.Sheqel,
        "Shield": FontAwesome.Shield,
        "Ship": FontAwesome.Ship,
        "Shirtsinbulk": FontAwesome.Shirtsinbulk,
        "ShoppingCart": FontAwesome.ShoppingCart,
        "SignIn": FontAwesome.SignIn,
        "SignOut": FontAwesome.SignOut,
        "Signal": FontAwesome.Signal,
        "Simplybuilt": FontAwesome.Simplybuilt,
        "Sitemap": FontAwesome.Sitemap,
        "Skyatlas": FontAwesome.Skyatlas,
        "Skype": FontAwesome.Skype,
        "Slack": FontAwesome.Slack,
        "Sliders": FontAwesome.Sliders,
        "Slideshare": FontAwesome.Slideshare,
        "SmileO": FontAwesome.SmileO,
        "SoccerBallO ": FontAwesome.SoccerBallO ,
        "Sort": FontAwesome.Sort,
        "SortAlphaAsc": FontAwesome.SortAlphaAsc,
        "SortAlphaDesc": FontAwesome.SortAlphaDesc,
        "SortAmountAsc": FontAwesome.SortAmountAsc,
        "SortAmountDesc": FontAwesome.SortAmountDesc,
        "SortAsc": FontAwesome.SortAsc,
        "SortDesc": FontAwesome.SortDesc,
        "SortDown ": FontAwesome.SortDown ,
        "SortNumericAsc": FontAwesome.SortNumericAsc,
        "SortNumericDesc": FontAwesome.SortNumericDesc,
        "SortUp": FontAwesome.SortUp,
        "SoundCloud": FontAwesome.SoundCloud,
        "SpaceShuttle": FontAwesome.SpaceShuttle,
        "Spinner": FontAwesome.Spinner,
        "Spoon": FontAwesome.Spoon,
        "Spotify": FontAwesome.Spotify,
        "Square": FontAwesome.Square,
        "SquareO": FontAwesome.SquareO,
        "StackExchange": FontAwesome.StackExchange,
        "StackOverflow": FontAwesome.StackOverflow,
        "Star": FontAwesome.Star,
        "StarHalf": FontAwesome.StarHalf,
        "StarHalfEmpty": FontAwesome.StarHalfEmpty,
        "StarHalfFull": FontAwesome.StarHalfFull,
        "StarHalfO": FontAwesome.StarHalfO,
        "StarO": FontAwesome.StarO,
        "Steam": FontAwesome.Steam,
        "SteamSquare": FontAwesome.SteamSquare,
        "StepBackward": FontAwesome.StepBackward,
        "StepForward": FontAwesome.StepForward,
        "Stethoscope": FontAwesome.Stethoscope,
        "Stop": FontAwesome.Stop,
        "StreetView": FontAwesome.StreetView,
        "Strikethrough": FontAwesome.Strikethrough,
        "StumbleUpon": FontAwesome.StumbleUpon,
        "StumbleUponCircle": FontAwesome.StumbleUponCircle,
        "Subscript": FontAwesome.Subscript,
        "Subway": FontAwesome.Subway,
        "Suitcase": FontAwesome.Suitcase,
        "SunO": FontAwesome.SunO,
        "Superscript": FontAwesome.Superscript,
        "Support": FontAwesome.Support,
        "Table": FontAwesome.Table,
        "Tablet": FontAwesome.Tablet,
        "Tachometer": FontAwesome.Tachometer,
        "Tag": FontAwesome.Tag,
        "Tags": FontAwesome.Tags,
        "Tasks": FontAwesome.Tasks,
        "Taxi": FontAwesome.Taxi,
        "TencentWeibo": FontAwesome.TencentWeibo,
        "Terminal": FontAwesome.Terminal,
        "TextHeight": FontAwesome.TextHeight,
        "TextWidth": FontAwesome.TextWidth,
        "Th": FontAwesome.Th,
        "ThLarge": FontAwesome.ThLarge,
        "ThList": FontAwesome.ThList,
        "ThumbTack": FontAwesome.ThumbTack,
        "ThumbsDown": FontAwesome.ThumbsDown,
        "ThumbsODown": FontAwesome.ThumbsODown,
        "ThumbsOUp": FontAwesome.ThumbsOUp,
        "ThumbsUp": FontAwesome.ThumbsUp,
        "Ticket": FontAwesome.Ticket,
        "Times": FontAwesome.Times,
        "TimesCircle": FontAwesome.TimesCircle,
        "TimesCircleO": FontAwesome.TimesCircleO,
        "Tint": FontAwesome.Tint,
        "ToggleDown": FontAwesome.ToggleDown,
        "ToggleLeft": FontAwesome.ToggleLeft,
        "ToggleOff": FontAwesome.ToggleOff,
        "ToggleOn": FontAwesome.ToggleOn,
        "ToggleRight": FontAwesome.ToggleRight,
        "ToggleUp": FontAwesome.ToggleUp,
        "Train": FontAwesome.Train,
        "TransGender": FontAwesome.TransGender,
        "TransGenderAlt": FontAwesome.TransGenderAlt,
        "Trash": FontAwesome.Trash,
        "TrashO": FontAwesome.TrashO,
        "Tree": FontAwesome.Tree,
        "Trello": FontAwesome.Trello,
        "Trophy": FontAwesome.Trophy,
        "Truck": FontAwesome.Truck,
        "Try": FontAwesome.Try,
        "Tty": FontAwesome.Tty,
        "Tumblr": FontAwesome.Tumblr,
        "TumblrSquare": FontAwesome.TumblrSquare,
        "TurkishLira ": FontAwesome.TurkishLira ,
        "Twitch": FontAwesome.Twitch,
        "Twitter": FontAwesome.Twitter,
        "TwitterSquare": FontAwesome.TwitterSquare,
        "Umbrella": FontAwesome.Umbrella,
        "Underline": FontAwesome.Underline,
        "Undo": FontAwesome.Undo,
        "University": FontAwesome.University,
        "Unlink": FontAwesome.Unlink,
        "Unlock": FontAwesome.Unlock,
        "UnlockAlt": FontAwesome.UnlockAlt,
        "Unsorted": FontAwesome.Unsorted,
        "Upload": FontAwesome.Upload,
        "USD": FontAwesome.USD,
        "User": FontAwesome.User,
        "UserMd": FontAwesome.UserMd,
        "UserPlus": FontAwesome.UserPlus,
        "UserSecret": FontAwesome.UserSecret,
        "UserTimes": FontAwesome.UserTimes,
        "Users": FontAwesome.Users,
        "Venus": FontAwesome.Venus,
        "VenusDouble": FontAwesome.VenusDouble,
        "VenusMars": FontAwesome.VenusMars,
        "Viacoin": FontAwesome.Viacoin,
        "VideoCamera": FontAwesome.VideoCamera,
        "VimeoSquare": FontAwesome.VimeoSquare,
        "Vine": FontAwesome.Vine,
        "Vk": FontAwesome.Vk,
        "VolumeDown": FontAwesome.VolumeDown,
        "VolumeOff": FontAwesome.VolumeOff,
        "VolumeUp": FontAwesome.VolumeUp,
        "Warning": FontAwesome.Warning,
        "Wechat": FontAwesome.Wechat,
        "Weibo": FontAwesome.Weibo,
        "Weixin": FontAwesome.Weixin,
        "Whatsapp": FontAwesome.Whatsapp,
        "Wheelchair": FontAwesome.Wheelchair,
        "Wifi": FontAwesome.Wifi,
        "Windows": FontAwesome.Windows,
        "WON": FontAwesome.WON,
        "Wordpress": FontAwesome.Wordpress,
        "Wrench": FontAwesome.Wrench,
        "Xing": FontAwesome.Xing,
        "XingSquare": FontAwesome.XingSquare,
        "Yahoo": FontAwesome.Yahoo,
        "Yelp": FontAwesome.Yelp,
        "Yen": FontAwesome.Yen,
        "Youtube": FontAwesome.Youtube,
        "YoutubePlay": FontAwesome.YoutubePlay
    ]

    static func fetchFontAwesome(faName: String) -> FontAwesome? {
        if let out: FontAwesome = fontAwesomeMapping[faName] {
            return out
        }
        return FontAwesome.Warning
    }

}
