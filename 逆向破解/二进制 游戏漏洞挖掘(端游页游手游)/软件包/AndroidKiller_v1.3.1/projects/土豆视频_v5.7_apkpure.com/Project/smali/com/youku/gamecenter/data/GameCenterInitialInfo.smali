.class public Lcom/youku/gamecenter/data/GameCenterInitialInfo;
.super Ljava/lang/Object;
.source "GameCenterInitialInfo.java"

# interfaces
.implements Lcom/youku/gamecenter/data/IResponseable;


# instance fields
.field public api_expired_at:Ljava/lang/String;

.field public launchNotifyFrequency:I

.field public launchNotifyStatus:Ljava/lang/String;

.field public messageCenterGameInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/MessageCenterGameInfo;",
            ">;"
        }
    .end annotation
.end field

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameCenterInitialInfo;->messageCenterGameInfos:Ljava/util/List;

    return-void
.end method
