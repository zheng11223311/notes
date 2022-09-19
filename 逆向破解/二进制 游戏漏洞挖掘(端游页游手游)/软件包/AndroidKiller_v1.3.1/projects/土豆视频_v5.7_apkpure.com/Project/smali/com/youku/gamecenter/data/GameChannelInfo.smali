.class public Lcom/youku/gamecenter/data/GameChannelInfo;
.super Ljava/lang/Object;
.source "GameChannelInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/youku/gamecenter/data/IResponseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/data/GameChannelInfo$ContentItemInfo;,
        Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;,
        Lcom/youku/gamecenter/data/GameChannelInfo$UnitsInfo;,
        Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;,
        Lcom/youku/gamecenter/data/GameChannelInfo$EntranceInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x56f4ccd643c8c709L


# instance fields
.field public game_entrances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameChannelInfo$EntranceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sub_channel_title:Ljava/lang/String;

.field public sub_channel_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameChannelInfo;->game_entrances:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameChannelInfo;->modules:Ljava/util/List;

    .line 214
    return-void
.end method


# virtual methods
.method public getSlidesUnitItemInfo()Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 101
    iget-object v5, p0, Lcom/youku/gamecenter/data/GameChannelInfo;->modules:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/youku/gamecenter/data/GameChannelInfo;->modules:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v3, v4

    .line 127
    :goto_0
    return-object v3

    .line 105
    :cond_1
    iget-object v5, p0, Lcom/youku/gamecenter/data/GameChannelInfo;->modules:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;

    .line 108
    .local v2, "item":Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;
    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;->units:Lcom/youku/gamecenter/data/GameChannelInfo$UnitsInfo;

    if-eqz v5, :cond_2

    .line 112
    iget-object v5, v2, Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;->units:Lcom/youku/gamecenter/data/GameChannelInfo$UnitsInfo;

    iget-object v5, v5, Lcom/youku/gamecenter/data/GameChannelInfo$UnitsInfo;->units:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;

    .line 115
    .local v3, "subItem":Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;
    if-eqz v3, :cond_3

    .line 118
    iget-object v5, v3, Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;->contents:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    const-string/jumbo v5, "slider_images"

    iget-object v6, v3, Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;->layout:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;
    .end local v3    # "subItem":Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;
    :cond_4
    move-object v3, v4

    .line 127
    goto :goto_0
.end method

.method public getValidItem(I)Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 62
    iget-object v6, p0, Lcom/youku/gamecenter/data/GameChannelInfo;->modules:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/youku/gamecenter/data/GameChannelInfo;->modules:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v4, v5

    .line 96
    :cond_1
    :goto_0
    return-object v4

    .line 66
    :cond_2
    const/4 v2, 0x0

    .line 67
    .local v2, "index":I
    iget-object v6, p0, Lcom/youku/gamecenter/data/GameChannelInfo;->modules:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;

    .line 70
    .local v3, "item":Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;
    if-eqz v3, :cond_3

    iget-object v6, v3, Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;->units:Lcom/youku/gamecenter/data/GameChannelInfo$UnitsInfo;

    if-eqz v6, :cond_3

    .line 74
    iget-object v6, v3, Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;->units:Lcom/youku/gamecenter/data/GameChannelInfo$UnitsInfo;

    iget-object v6, v6, Lcom/youku/gamecenter/data/GameChannelInfo$UnitsInfo;->units:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;

    .line 77
    .local v4, "subItem":Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;
    if-eqz v4, :cond_4

    .line 80
    iget-object v6, v4, Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;->contents:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_4

    .line 83
    const-string/jumbo v6, "slider_images"

    iget-object v7, v4, Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;->layout:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 88
    if-eq v2, p1, :cond_1

    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;
    .end local v4    # "subItem":Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;
    :cond_5
    move-object v4, v5

    .line 96
    goto :goto_0
.end method

.method public getValidSize()I
    .locals 7

    .prologue
    .line 26
    iget-object v5, p0, Lcom/youku/gamecenter/data/GameChannelInfo;->modules:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/youku/gamecenter/data/GameChannelInfo;->modules:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 27
    :cond_0
    const/4 v3, 0x0

    .line 57
    :cond_1
    return v3

    .line 30
    :cond_2
    const/4 v3, 0x0

    .line 32
    .local v3, "size":I
    iget-object v5, p0, Lcom/youku/gamecenter/data/GameChannelInfo;->modules:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;

    .line 35
    .local v2, "item":Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;
    if-eqz v2, :cond_3

    iget-object v5, v2, Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;->units:Lcom/youku/gamecenter/data/GameChannelInfo$UnitsInfo;

    if-eqz v5, :cond_3

    .line 39
    iget-object v5, v2, Lcom/youku/gamecenter/data/GameChannelInfo$ModuleItemInfo;->units:Lcom/youku/gamecenter/data/GameChannelInfo$UnitsInfo;

    iget-object v5, v5, Lcom/youku/gamecenter/data/GameChannelInfo$UnitsInfo;->units:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;

    .line 42
    .local v4, "subItem":Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;
    if-eqz v4, :cond_4

    .line 45
    iget-object v5, v4, Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;->contents:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_4

    .line 48
    const-string/jumbo v5, "slider_images"

    iget-object v6, v4, Lcom/youku/gamecenter/data/GameChannelInfo$UnitItemInfo;->layout:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    goto :goto_0
.end method
