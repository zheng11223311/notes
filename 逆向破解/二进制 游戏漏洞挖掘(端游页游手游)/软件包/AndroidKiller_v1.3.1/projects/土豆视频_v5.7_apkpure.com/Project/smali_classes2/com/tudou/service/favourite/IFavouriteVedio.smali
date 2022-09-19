.class public interface abstract Lcom/tudou/service/favourite/IFavouriteVedio;
.super Ljava/lang/Object;
.source "IFavouriteVedio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;,
        Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;
    }
.end annotation


# static fields
.field public static final ADD_FAV_ERROR_OTHER:Ljava/lang/String; = "\u5176\u4ed6\u9519\u8bef"

.field public static final ADD_FAV_ERROR_RESET:Ljava/lang/String; = "\u60a8\u5df2\u6536\u85cf\u8be5\u89c6\u9891"


# virtual methods
.method public abstract addToFavrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V
.end method

.method public abstract deleteFavrite(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V
.end method

.method public abstract deleteFavrite(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract deleteLocalFavrite()V
.end method

.method public abstract getFavriteList(Landroid/content/Context;ILcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;)V
.end method

.method public abstract isFavrite(Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V
.end method

.method public abstract onUserLoginCallBack()V
.end method

.method public abstract onUserQuitCallBack()V
.end method

.method public abstract uploadLocalFavrite()V
.end method
