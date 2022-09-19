.class public Lcom/youku/vo/ChannelFliterTypeTudouBean;
.super Ljava/lang/Object;
.source "ChannelFliterTypeTudouBean.java"


# instance fields
.field public categoryTagName:Ljava/lang/String;

.field public secondTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelFliterTypeItemTudouBean;",
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

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelFliterTypeItemTudouBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, "secondTags":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelFliterTypeItemTudouBean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/youku/vo/ChannelFliterTypeTudouBean;->categoryTagName:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    .line 17
    return-void
.end method
