.class Lcom/tudou/adapter/TabsLinkedList;
.super Ljava/lang/Object;
.source "ChannelSquearAdapter.java"


# instance fields
.field private linkedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tudou/service/attention/IAttention$Results;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tudou/adapter/TabsLinkedList;->linkedMap:Ljava/util/HashMap;

    .line 496
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Integer;Lcom/tudou/service/attention/IAttention$Results;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/Integer;
    .param p2, "tabs"    # Lcom/tudou/service/attention/IAttention$Results;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/tudou/adapter/TabsLinkedList;->linkedMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    return-void
.end method

.method public getChannelTabs(Ljava/lang/Integer;)Lcom/tudou/service/attention/IAttention$Results;
    .locals 1
    .param p1, "name"    # Ljava/lang/Integer;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/tudou/adapter/TabsLinkedList;->linkedMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/attention/IAttention$Results;

    return-object v0
.end method
