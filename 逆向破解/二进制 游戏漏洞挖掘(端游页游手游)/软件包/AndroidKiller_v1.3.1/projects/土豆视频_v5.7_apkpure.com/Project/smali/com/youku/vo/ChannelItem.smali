.class public Lcom/youku/vo/ChannelItem;
.super Ljava/lang/Object;
.source "ChannelItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public choicenes_state:I

.field public cid:I

.field public default_order_by:Ljava/lang/String;

.field public display_flag:I

.field public firstTagId:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public image_at_bottom:Ljava/lang/String;

.field public image_at_top:Ljava/lang/String;

.field public isSelected:Z

.field public is_listing:I

.field public is_listing_selected:Z

.field public label_top_state:Z

.field public label_tops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelLabelTab;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public normal_icon_for_v_4:Ljava/lang/String;

.field public redirect_type:Ljava/lang/String;

.field public selected_icon:Ljava/lang/String;

.field public show_operation:I

.field public tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelTab;",
            ">;"
        }
    .end annotation
.end field

.field public tabs_state:Z

.field public tagType:Ljava/lang/String;

.field public the_whole_state:I

.field public top_state:Z

.field public top_type:I

.field public type:Ljava/lang/String;

.field public url_for_more_link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefault_order_by_name()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    const-string v0, "quality"

    iget-object v1, p0, Lcom/youku/vo/ChannelItem;->default_order_by:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string/jumbo v0, "\u6700\u5177\u4eba\u6c14"

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "\u6700\u65b0\u53d1\u5e03"

    goto :goto_0
.end method
