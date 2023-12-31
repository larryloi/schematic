CREATE TABLE [DW_ETL].[Mytest](
        [rid] [bigint] IDENTITY(1,1) NOT NULL,
        [round2_id] [nvarchar](255) NOT NULL,
        [accounting2_date_id] [int] NOT NULL,
        [game2_id] [int] NOT NULL,
        [workstation2] [nvarchar](max) NOT NULL,
        [slip2_id] [int] NOT NULL,
        [amt2] [decimal](10, 4) NOT NULL,
        [jp2_win_amt] [numeric](10, 4) NOT NULL,
        [bet_type2] [char](85) NOT NULL,
        [payout_type2] [char](45) NOT NULL,
        [round2_completed_at] [datetime] NOT NULL,
        [denom2_set_id] [bigint] NOT NULL,
        [member_id2] [varchar](255) NOT NULL,
        [description2] [nvarchar](max) NULL,
        [remark2] [text] NULL,
        [created2_at] [datetime] NOT NULL,
        [updated2_at] [datetime2](7) NOT NULL,
        [acct2_date] [date] NOT NULL,
        [acct2_time] [time] NOT NULL
        [is_settled2] [boolean] NOT NULL,
        [GSP2DR] [varchar] (1) NOT NULL,
        [GSP10_DR] [varchar] (1) NOT NULL,