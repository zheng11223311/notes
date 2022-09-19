.class public Lcom/youku/vo/IndexPageItem;
.super Ljava/lang/Object;
.source "IndexPageItem.java"


# static fields
.field public static final CHANGE_GUESS:I = 0x2

.field public static final CHANGE_HOT:I = 0x1

.field public static final TYPE_BOTTOM_LABLE:I = 0xb

.field public static final TYPE_BOTTOM_LABLE_5:I = 0x10

.field public static final TYPE_CHANNEL_LIST:I = 0x1

.field public static final TYPE_FOOT:I = 0xe

.field public static final TYPE_HOR:I = 0x4

.field public static final TYPE_HOR_BOKE:I = 0xd

.field public static final TYPE_HOT_TITLE:I = 0x3

.field public static final TYPE_HTML5:I = 0x12

.field public static final TYPE_MORE:I = 0xa

.field public static final TYPE_NORMAL_TITLE:I = 0x7

.field public static final TYPE_NOTIFY:I = 0x2

.field public static final TYPE_PAPER:I = 0x6

.field public static final TYPE_PAPER_TOPIC:I = 0x11

.field public static final TYPE_SELECTNESS:I = 0xc

.field public static final TYPE_SEPRATER:I = 0xf

.field public static final TYPE_TOPIC_TITLE:I = 0x5

.field public static final TYPE_TOP_SLIDE:I = 0x0

.field public static final TYPE_VER:I = 0x8

.field public static final TYPE_WEEK:I = 0x9


# instance fields
.field public changeType:I

.field public channel_list_area:Lcom/youku/vo/ChannelListArea;

.field public hasAnimation:Z

.field public historyVideo:Lcom/youku/vo/HistoryVideo;

.field public index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

.field public isShowAD:Z

.field public itemType:I

.field public mNotify:Lcom/youku/vo/Notifications;

.field public notifyType:I

.field public search_area:Lcom/youku/vo/SearchArea;

.field public slide_cards_inf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/vo/IndexPageItem;->isShowAD:Z

    return-void
.end method
