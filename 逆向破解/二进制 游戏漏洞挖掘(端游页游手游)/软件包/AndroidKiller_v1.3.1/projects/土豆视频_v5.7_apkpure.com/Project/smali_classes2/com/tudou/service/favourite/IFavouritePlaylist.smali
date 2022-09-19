.class public interface abstract Lcom/tudou/service/favourite/IFavouritePlaylist;
.super Ljava/lang/Object;
.source "IFavouritePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;,
        Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;
    }
.end annotation


# static fields
.field public static final ADD_FAV_ERROR_OTHER:Ljava/lang/String; = "\u5176\u4ed6\u9519\u8bef"

.field public static final ADD_FAV_ERROR_RESET:Ljava/lang/String; = "\u60a8\u5df2\u6536\u85cf\u8be5\u8c46\u5355"


# virtual methods
.method public abstract addToFavrite(Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
.end method

.method public abstract deleteFavrite(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
.end method

.method public abstract deleteFavrite(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract deleteLocalFavrite()V
.end method

.method public abstract getFavriteList(Landroid/content/Context;ILcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;)V
.end method

.method public abstract isFavrite(Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
.end method

.method public abstract onUserLoginCallBack()V
.end method

.method public abstract onUserQuitCallBack()V
.end method

.method public abstract uploadLocalFavrite()V
.end method
