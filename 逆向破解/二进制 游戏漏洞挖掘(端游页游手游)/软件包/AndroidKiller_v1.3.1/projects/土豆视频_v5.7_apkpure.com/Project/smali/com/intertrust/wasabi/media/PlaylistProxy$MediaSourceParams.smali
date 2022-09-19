.class public Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceParams;
.super Ljava/lang/Object;
.source "PlaylistProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intertrust/wasabi/media/PlaylistProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaSourceParams"
.end annotation


# instance fields
.field public audioCodecs:Ljava/lang/String;

.field public bbtsIndexUrl:Ljava/lang/String;

.field public bitrateBitsPerSecond:I

.field public contentType:Ljava/lang/String;

.field public durationSeconds:I

.field public language:Ljava/lang/String;

.field public masterPlaylistAppendix:Ljava/lang/String;

.field public sourceContentType:Ljava/lang/String;

.field public videoCodecs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
