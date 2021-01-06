CREATE TABLE [dbo].[Users] (
  [UserId] [int] IDENTITY (1, 1) PRIMARY KEY,
  [FirstName] nvarchar(32),
  [LastName] nvarchar(32),
  [EmailId] nvarchar(32),
  [Password] nvarchar(32)
)

GO

CREATE TABLE [dbo].[Buckets] (
  [BucketId] [int] IDENTITY (1, 1) PRIMARY KEY,
  [UserId] [int] NOT NULL FOREIGN KEY REFERENCES Users (UserId),
  [BucketTitle] nvarchar(32)
)
GO

CREATE TABLE [dbo].[Todo] (
  [TodoId] [int] IDENTITY (1, 1) PRIMARY KEY,
  [TodoTitle] nvarchar(32),
  [IsCompleted] bit,
)

GO

CREATE TABLE [dbo].[BucketTodo] (
  [BucketId] [int] NOT NULL FOREIGN KEY REFERENCES Buckets (BucketId),
  [TodoId] [int] NOT NULL FOREIGN KEY REFERENCES Todo (TodoId),
  PRIMARY KEY (BucketId, TodoId)
)
GO