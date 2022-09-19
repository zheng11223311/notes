.class public interface abstract Lcom/youku/gamecenter/services/GetGameListService$OnGameListServiceListener;
.super Ljava/lang/Object;
.source "GetGameListService.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/services/GetGameListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGameListServiceListener"
.end annotation


# virtual methods
.method public abstract onSuccess(Lcom/youku/gamecenter/data/GameListInfo;)V
.end method
