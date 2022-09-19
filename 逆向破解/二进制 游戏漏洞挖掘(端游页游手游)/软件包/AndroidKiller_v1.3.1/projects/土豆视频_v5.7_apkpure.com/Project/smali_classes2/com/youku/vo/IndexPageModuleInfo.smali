.class public Lcom/youku/vo/IndexPageModuleInfo;
.super Ljava/lang/Object;
.source "IndexPageModuleInfo.java"


# static fields
.field public static final TYPE_LABEL_NORMAL:Ljava/lang/String; = "normal"

.field public static final TYPE_LABEL_WEEK:Ljava/lang/String; = "week_schedule"

.field public static final TYP_GUESS:Ljava/lang/String; = "guess_tab"

.field public static final TYP_HOT:Ljava/lang/String; = "today_hot"

.field public static final TYP_HTML5:Ljava/lang/String; = "the_html5"

.field public static final TYP_LAIFENG:Ljava/lang/String; = "laifeng"

.field public static final TYP_NORMAL:Ljava/lang/String; = "normal_tab"

.field public static final TYP_PODCAST:Ljava/lang/String; = "podcast_tab"

.field public static final TYP_SELECTNESS:Ljava/lang/String; = "selectness_tab"

.field public static final TYP_TOPIC:Ljava/lang/String; = "special_topic"

.field public static final Title_STYLE_IMG:Ljava/lang/String; = "image"

.field public static final Title_STYLE_TXT:Ljava/lang/String; = "text"


# instance fields
.field public bottom_label_type:Ljava/lang/String;

.field public cards_inf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public channel_id:Ljava/lang/String;

.field public cover_image:Ljava/lang/String;

.field public image_state:I

.field public module_bottom_labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ModuleLabel;",
            ">;"
        }
    .end annotation
.end field

.field public module_id:Ljava/lang/String;

.field public module_more_pos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ModuleLabel;",
            ">;"
        }
    .end annotation
.end field

.field public skip_inf:Lcom/youku/vo/SkipInfo;

.field public sub_title:Ljava/lang/String;

.field public sub_title_labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ModuleLabel;",
            ">;"
        }
    .end annotation
.end field

.field public sub_type:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public title_corner_image:Ljava/lang/String;

.field public title_display_style:Ljava/lang/String;

.field public title_icon:Ljava/lang/String;

.field public week_schedule_labels:Lcom/youku/vo/WeekScheduleLabels;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
