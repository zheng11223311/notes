.class public interface abstract Lcom/youku/gamecenter/services/GetGameRecommendService$OnGameRecommendServiceListener;
.super Ljava/lang/Object;
.source "GetGameRecommendService.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/services/GetGameRecommendService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGameRecommendServiceListener"
.end annotation


# virtual methods
.method public abstract onSuccess(Lcom/youku/gamecenter/data/GameRecommendInfo;)V
.end method
