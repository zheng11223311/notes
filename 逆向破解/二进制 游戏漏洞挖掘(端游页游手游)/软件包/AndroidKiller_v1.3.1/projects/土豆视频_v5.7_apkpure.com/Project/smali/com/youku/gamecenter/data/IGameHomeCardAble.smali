.class public interface abstract Lcom/youku/gamecenter/data/IGameHomeCardAble;
.super Ljava/lang/Object;
.source "IGameHomeCardAble.java"


# static fields
.field public static final ITEM_TYPE_BANNER:I = 0x2

.field public static final ITEM_TYPE_CARD_POSTER:I = 0x1

.field public static final ITEM_TYPE_CARD_TITLE:I = 0x0

.field public static final ITEM_TYPE_H5_ACTIVITIES:I = 0x6

.field public static final ITEM_TYPE_H5_SUBJECT:I = 0x5

.field public static final ITEM_TYPE_MYGAME:I = 0x4

.field public static final ITEM_TYPE_RECOM:I = 0x3


# virtual methods
.method public abstract getAllItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCardTag()Ljava/lang/String;
.end method

.method public abstract getCardTitle()Ljava/lang/String;
.end method

.method public abstract getFirstGameInfo()Lcom/youku/gamecenter/data/GameInfo;
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getShowItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()I
.end method

.method public abstract hasMore()Z
.end method
