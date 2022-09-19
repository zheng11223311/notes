.class public Lcom/youku/vo/ChannelFliterBean;
.super Ljava/lang/Object;
.source "ChannelFliterBean.java"


# instance fields
.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelFliterTypeTudouBean;",
            ">;"
        }
    .end annotation
.end field

.field public msg:Ljava/lang/String;

.field public sort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelFliterSortItemTudouBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelFliterTypeTudouBean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelFliterSortItemTudouBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelFliterTypeTudouBean;>;"
    .local p3, "sort":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelFliterSortItemTudouBean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/youku/vo/ChannelFliterBean;->msg:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    .line 17
    iput-object p3, p0, Lcom/youku/vo/ChannelFliterBean;->sort:Ljava/util/List;

    .line 18
    return-void
.end method
