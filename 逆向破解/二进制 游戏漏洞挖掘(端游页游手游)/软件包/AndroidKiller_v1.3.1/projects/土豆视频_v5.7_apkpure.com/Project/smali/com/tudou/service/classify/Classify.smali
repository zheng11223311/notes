.class public interface abstract Lcom/tudou/service/classify/Classify;
.super Ljava/lang/Object;
.source "Classify.java"


# static fields
.field public static final ALL_CLASSIFY_GET_FAILED:I = 0x186a2

.field public static final ALL_CLASSIFY_GET_SUCCESS:I = 0x2711

.field public static final ALL_FEATURE_TYPE:Ljava/lang/String; = "-2"

.field public static final CID_CAIFU:Ljava/lang/String; = "24"

.field public static final CID_CHENGSHI:Ljava/lang/String; = "104"

.field public static final CID_CHENGZHANG:Ljava/lang/String; = "25"

.field public static final CID_DIANSHIJU:Ljava/lang/String; = "30"

.field public static final CID_DIANYING:Ljava/lang/String; = "22"

.field public static final CID_DONGMAN:Ljava/lang/String; = "9"

.field public static final CID_FENGSHANG:Ljava/lang/String; = "32"

.field public static final CID_GAOXIAO:Ljava/lang/String; = "5"

.field public static final CID_HUIYUAN:Ljava/lang/String; = "422"

.field public static final CID_JIANKANG:Ljava/lang/String; = "33"

.field public static final CID_JISHI:Ljava/lang/String; = "28"

.field public static final CID_KEJI:Ljava/lang/String; = "21"

.field public static final CID_LEHUO:Ljava/lang/String; = "3"

.field public static final CID_MEIRONG:Ljava/lang/String; = "34"

.field public static final CID_NULL:I = -0x2766

.field public static final CID_NVXING:Ljava/lang/String; = "27"

.field public static final CID_QICHE:Ljava/lang/String; = "26"

.field public static final CID_REDIAN:Ljava/lang/String; = "29"

.field public static final CID_SHISHANG:Ljava/lang/String; = "32"

.field public static final CID_TIYU:Ljava/lang/String; = "15"

.field public static final CID_TYPE:Ljava/lang/String; = "cid"

.field public static final CID_WANHUO:Ljava/lang/String; = "88"

.field public static final CID_YINYUE:Ljava/lang/String; = "14"

.field public static final CID_YOUXI:Ljava/lang/String; = "10"

.field public static final CID_YUANCHUANG:Ljava/lang/String; = "99"

.field public static final CID_YULE:Ljava/lang/String; = "1"

.field public static final CID_ZONGYI:Ljava/lang/String; = "31"

.field public static final CID_ZUIQIANGDANAO:Ljava/lang/String; = "10001"

.field public static final CLASSIFY_FEATURE_INFO_DATA_FAILED:I = 0x271a

.field public static final CLASSIFY_FEATURE_INFO_DATA_SUCCESS:I = 0x2719

.field public static final FILTER_PUBTIME:Ljava/lang/String; = "pubTime"

.field public static final FILTER_QUALITY:Ljava/lang/String; = "quality"

.field public static final FILTER_TYPE:Ljava/lang/String; = "filter_tag"

.field public static final GET_CLASSIFY_LIST_FAILED:I = 0x271c

.field public static final GET_CLASSIFY_LIST_SUCCESS:I = 0x271b

.field public static final GET_FILTER_FAILED:I = 0x186a4

.field public static final GET_FILTER_SUCCESS:I = 0x186a3

.field public static final GET_SELECT_VIDEO_LIST_FAILED:I = 0x2717

.field public static final GET_SELECT_VIDEO_LIST_SUCCESS:I = 0x2716

.field public static final IMAGE_STATE:Ljava/lang/String; = "1"

.field public static final KEY_TAG:Ljava/lang/String; = "key_tag"

.field public static final LF_CID:Ljava/lang/String; = "10490"

.field public static final MID_TYPE:Ljava/lang/String; = "mid"

.field public static final MODULE_LABEL_TYPE:Ljava/lang/String; = "module_label"

.field public static final REQUEST_CODE:I = 0x64

.field public static final SELECTNESS_TAB_LIST_TYPE:Ljava/lang/String; = "selectness_tab_list"

.field public static final SELECT_FILTRATE_DATA:I = 0x2715

.field public static final SPECIAL_TOPIC_TYPE:Ljava/lang/String; = "special_topic"

.field public static final SUB_TYPE_H5:Ljava/lang/String; = "the_html5"

.field public static final SUB_TYPE_H5_INT:I = 0x6

.field public static final SUB_TYPE_NORMAL_TAB:Ljava/lang/String; = "normal_tab"

.field public static final SUB_TYPE_NORMAL_TAB_HORIZONTAL_INT:I = 0x0

.field public static final SUB_TYPE_NORMAL_TAB_VERTICAL_INT:I = 0x1

.field public static final SUB_TYPE_PODCASE_TAB:Ljava/lang/String; = "podcast_tab"

.field public static final SUB_TYPE_PODCASE_TAB_INT:I = 0x2

.field public static final SUB_TYPE_SELECTNESS_LIST:Ljava/lang/String; = "selectness_list"

.field public static final SUB_TYPE_SELECTNESS_LIST_INT:I = 0x5

.field public static final SUB_TYPE_SELECTNESS_TAB:Ljava/lang/String; = "selectness_tab"

.field public static final SUB_TYPE_SELECTNESS_TAB_INT:I = 0x3

.field public static final SUB_TYPE_SPECIAL_TOPIC:Ljava/lang/String; = "special_topic"

.field public static final SUB_TYPE_SPECIAL_TOPIC_INT:I = 0x4

.field public static final TAG_TYPE_EPISODE:Ljava/lang/String; = "3"

.field public static final TAG_TYPE_UGC:Ljava/lang/String; = "1"

.field public static final TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final UPDATA_FILTRATE_DATA:I = 0x2718

.field public static final URL_TYPE:Ljava/lang/String; = "url"

.field public static final VIDEO_TYPE:Ljava/lang/String; = "video"

.field public static final VIEW_TYPE_COUNT:I = 0x7

.field public static final VIP_BRIEF_FILTER:Ljava/lang/String; = "1686"

.field public static final VIP_BRIEF_SORT_BY:Ljava/lang/String; = "quality"

.field public static final VIP_CID:Ljava/lang/String; = "422"

.field public static final VIP_FIRST_TAG_ID:Ljava/lang/String; = "5"

.field public static final VIP_IMAGE_STATE:Ljava/lang/String; = "0"

.field public static final VIP_SKIP_TYPE:Ljava/lang/String; = "filter_tag"

.field public static final VIP_TAG_TYPE:Ljava/lang/String; = "3"

.field public static final VIP_TITLE:Ljava/lang/String; = "\u4f1a\u5458"

.field public static final VIP_TYPE:Ljava/lang/String; = "vip"

.field public static final WEEK_TYPE:Ljava/lang/String; = "week_schedule"

.field public static final handlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tudou/service/classify/Classify;->handlerList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract deleteHandler(Landroid/os/Handler;)V
.end method

.method public abstract getChannalList(Landroid/os/Handler;)V
.end method

.method public abstract getChannelLabelTop(ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end method

.method public abstract getChannelsFilterData(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end method

.method public abstract getClassifyFeature(Ljava/lang/String;Landroid/os/Handler;)V
.end method

.method public abstract getSelectVideoList(Lcom/youku/vo/SkipInfo;ILandroid/os/Handler;)V
.end method

.method public abstract goClassifyAllChannel(Landroid/content/Context;Lcom/youku/vo/SkipInfo;Z)V
.end method

.method public abstract goClassifyFeatureFragment(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract goClassifyHome(Landroid/content/Context;)V
.end method

.method public abstract goClassifySelectedResults(Landroid/content/Context;Lcom/youku/vo/SkipInfo;Z)V
.end method

.method public abstract goRowPieceTableActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract goVipActivity(Landroid/content/Context;Lcom/youku/vo/SkipInfo;)V
.end method

.method public abstract setHandler(Landroid/os/Handler;)V
.end method
