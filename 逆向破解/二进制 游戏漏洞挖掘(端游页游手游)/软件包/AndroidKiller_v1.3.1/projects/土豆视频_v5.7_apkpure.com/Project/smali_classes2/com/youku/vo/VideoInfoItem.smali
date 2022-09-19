.class public Lcom/youku/vo/VideoInfoItem;
.super Ljava/lang/Object;
.source "VideoInfoItem.java"


# static fields
.field public static final TYP_BLANK:I = 0x0

.field public static final TYP_HOR:I = 0x1

.field public static final TYP_HOR_BOKE:I = 0x4

.field public static final TYP_HOR_NO_TITLE:I = 0x6

.field public static final TYP_NO_TITLE:I = 0x5

.field public static final TYP_PAPER:I = 0x3

.field public static final TYP_VER:I = 0x2


# instance fields
.field public channelCid:Ljava/lang/String;

.field public channelName:Ljava/lang/String;

.field public hasMore:Z

.field public index_page_channel_icon:Ljava/lang/String;

.field public isLastItem:Z

.field public itemType:I

.field public redirect_type:Ljava/lang/String;

.field public sub_title:Ljava/lang/String;

.field public url_for_more_link:Ljava/lang/String;

.field public videoInfoItem1:Lcom/youku/vo/VideoInfo;

.field public videoInfoItem2:Lcom/youku/vo/VideoInfo;

.field public videoInfoItem3:Lcom/youku/vo/VideoInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
