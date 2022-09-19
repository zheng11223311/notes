.class public Lcom/youku/gamecenter/data/ExistGameDatasInfo$GameExtraData;
.super Ljava/lang/Object;
.source "ExistGameDatasInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/data/ExistGameDatasInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameExtraData"
.end annotation


# instance fields
.field public button_skip_type:I

.field public button_text:Ljava/lang/String;

.field public clickLogUrl:Ljava/lang/String;

.field public gameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field public image_skip_type:I

.field public image_url:Ljava/lang/String;

.field public is_app:I

.field public md5:Ljava/lang/String;

.field public rec_tags:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
