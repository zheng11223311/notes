.class public Lcom/youku/vo/ChannelFeatureBean;
.super Ljava/lang/Object;
.source "ChannelFeatureBean.java"


# instance fields
.field public channel_base_inf:Lcom/youku/vo/ChannelBaseInfo;

.field public channel_page_labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelPageLabels;",
            ">;"
        }
    .end annotation
.end field

.field public channel_page_modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelPageModules;",
            ">;"
        }
    .end annotation
.end field

.field public comment:Ljava/lang/String;

.field public error:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public top_slide_area:Lcom/youku/vo/TopSlideArea;

.field public typeCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/vo/ChannelFeatureBean;->typeCount:I

    return-void
.end method
