.class public Lcom/youku/vo/ChannelPageModules;
.super Ljava/lang/Object;
.source "ChannelPageModules.java"


# instance fields
.field public cards_inf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public channel_id:Ljava/lang/String;

.field public cover_image:Ljava/lang/String;

.field public image_state:Ljava/lang/String;

.field public itemType:I

.field public module_id:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "1"

    iput-object v0, p0, Lcom/youku/vo/ChannelPageModules;->image_state:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public formatType()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "podcast_tab"

    iget-object v1, p0, Lcom/youku/vo/ChannelPageModules;->sub_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/youku/vo/ChannelPageModules;->itemType:I

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v0, "selectness_tab"

    iget-object v1, p0, Lcom/youku/vo/ChannelPageModules;->sub_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/youku/vo/ChannelPageModules;->itemType:I

    goto :goto_0

    .line 52
    :cond_2
    const-string v0, "special_topic"

    iget-object v1, p0, Lcom/youku/vo/ChannelPageModules;->sub_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lcom/youku/vo/ChannelPageModules;->itemType:I

    goto :goto_0

    .line 54
    :cond_3
    const-string v0, "selectness_list"

    iget-object v1, p0, Lcom/youku/vo/ChannelPageModules;->sub_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    const/4 v0, 0x5

    iput v0, p0, Lcom/youku/vo/ChannelPageModules;->itemType:I

    goto :goto_0

    .line 56
    :cond_4
    const-string v0, "the_html5"

    iget-object v1, p0, Lcom/youku/vo/ChannelPageModules;->sub_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 57
    const/4 v0, 0x6

    iput v0, p0, Lcom/youku/vo/ChannelPageModules;->itemType:I

    goto :goto_0

    .line 58
    :cond_5
    const-string v0, "normal_tab"

    iget-object v1, p0, Lcom/youku/vo/ChannelPageModules;->sub_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "1"

    iget-object v1, p0, Lcom/youku/vo/ChannelPageModules;->image_state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/vo/ChannelPageModules;->itemType:I

    goto :goto_0

    .line 62
    :cond_6
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/vo/ChannelPageModules;->itemType:I

    goto :goto_0
.end method
