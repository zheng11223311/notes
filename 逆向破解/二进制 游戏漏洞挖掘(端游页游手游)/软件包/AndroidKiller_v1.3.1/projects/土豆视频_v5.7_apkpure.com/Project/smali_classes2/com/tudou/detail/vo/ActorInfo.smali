.class public Lcom/tudou/detail/vo/ActorInfo;
.super Ljava/lang/Object;
.source "ActorInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/ActorInfo$Tabs;
    }
.end annotation


# instance fields
.field public area:Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public constellation:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public occupation:Ljava/lang/String;

.field public tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/ActorInfo$Tabs;",
            ">;"
        }
    .end annotation
.end field

.field public thumb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public getTitles()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v1, "rets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/tudou/detail/vo/ActorInfo;->tabs:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tudou/detail/vo/ActorInfo;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 25
    iget-object v3, p0, Lcom/tudou/detail/vo/ActorInfo;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/ActorInfo$Tabs;

    .line 26
    .local v2, "t":Lcom/tudou/detail/vo/ActorInfo$Tabs;
    iget-object v3, v2, Lcom/tudou/detail/vo/ActorInfo$Tabs;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "t":Lcom/tudou/detail/vo/ActorInfo$Tabs;
    :cond_0
    return-object v1
.end method

.method public getVideosByCat(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "cat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/ActorInfo$Tabs$Videos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tudou/detail/vo/ActorInfo;->tabs:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/detail/vo/ActorInfo;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/tudou/detail/vo/ActorInfo;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/ActorInfo$Tabs;

    .line 35
    .local v1, "t":Lcom/tudou/detail/vo/ActorInfo$Tabs;
    iget-object v2, v1, Lcom/tudou/detail/vo/ActorInfo$Tabs;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    iget-object v2, v1, Lcom/tudou/detail/vo/ActorInfo$Tabs;->videos:Ljava/util/ArrayList;

    .line 40
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lcom/tudou/detail/vo/ActorInfo$Tabs;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
