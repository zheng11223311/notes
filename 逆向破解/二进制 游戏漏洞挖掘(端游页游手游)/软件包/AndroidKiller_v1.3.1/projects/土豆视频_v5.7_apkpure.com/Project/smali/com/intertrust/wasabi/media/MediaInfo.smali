.class public Lcom/intertrust/wasabi/media/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intertrust/wasabi/media/MediaInfo$EncryptionMethod;,
        Lcom/intertrust/wasabi/media/MediaInfo$Format;,
        Lcom/intertrust/wasabi/media/MediaInfo$Type;
    }
.end annotation


# instance fields
.field private bitrate:I

.field private duration:I

.field private encMethod:Lcom/intertrust/wasabi/media/MediaInfo$EncryptionMethod;

.field private format:Lcom/intertrust/wasabi/media/MediaInfo$Format;

.field private type:Lcom/intertrust/wasabi/media/MediaInfo$Type;


# direct methods
.method constructor <init>(IIIII)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/intertrust/wasabi/media/MediaInfo$Type;->values()[Lcom/intertrust/wasabi/media/MediaInfo$Type;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/intertrust/wasabi/media/MediaInfo;->type:Lcom/intertrust/wasabi/media/MediaInfo$Type;

    .line 61
    invoke-static {}, Lcom/intertrust/wasabi/media/MediaInfo$Format;->values()[Lcom/intertrust/wasabi/media/MediaInfo$Format;

    move-result-object v0

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/intertrust/wasabi/media/MediaInfo;->format:Lcom/intertrust/wasabi/media/MediaInfo$Format;

    .line 62
    invoke-static {}, Lcom/intertrust/wasabi/media/MediaInfo$EncryptionMethod;->values()[Lcom/intertrust/wasabi/media/MediaInfo$EncryptionMethod;

    move-result-object v0

    aget-object v0, v0, p3

    iput-object v0, p0, Lcom/intertrust/wasabi/media/MediaInfo;->encMethod:Lcom/intertrust/wasabi/media/MediaInfo$EncryptionMethod;

    .line 63
    iput p4, p0, Lcom/intertrust/wasabi/media/MediaInfo;->duration:I

    .line 64
    iput p5, p0, Lcom/intertrust/wasabi/media/MediaInfo;->bitrate:I

    .line 65
    return-void
.end method

.method protected constructor <init>(Lcom/intertrust/wasabi/media/MediaInfo$Type;IIII)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/intertrust/wasabi/media/MediaInfo;->type:Lcom/intertrust/wasabi/media/MediaInfo$Type;

    .line 69
    invoke-static {}, Lcom/intertrust/wasabi/media/MediaInfo$Format;->values()[Lcom/intertrust/wasabi/media/MediaInfo$Format;

    move-result-object v0

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/intertrust/wasabi/media/MediaInfo;->format:Lcom/intertrust/wasabi/media/MediaInfo$Format;

    .line 70
    invoke-static {}, Lcom/intertrust/wasabi/media/MediaInfo$EncryptionMethod;->values()[Lcom/intertrust/wasabi/media/MediaInfo$EncryptionMethod;

    move-result-object v0

    aget-object v0, v0, p3

    iput-object v0, p0, Lcom/intertrust/wasabi/media/MediaInfo;->encMethod:Lcom/intertrust/wasabi/media/MediaInfo$EncryptionMethod;

    .line 71
    iput p4, p0, Lcom/intertrust/wasabi/media/MediaInfo;->duration:I

    .line 72
    iput p5, p0, Lcom/intertrust/wasabi/media/MediaInfo;->bitrate:I

    .line 73
    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/intertrust/wasabi/media/MediaInfo;->bitrate:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/intertrust/wasabi/media/MediaInfo;->duration:I

    return v0
.end method

.method public getEncryptionMethod()Lcom/intertrust/wasabi/media/MediaInfo$EncryptionMethod;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/intertrust/wasabi/media/MediaInfo;->encMethod:Lcom/intertrust/wasabi/media/MediaInfo$EncryptionMethod;

    return-object v0
.end method

.method public getFormat()Lcom/intertrust/wasabi/media/MediaInfo$Format;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/intertrust/wasabi/media/MediaInfo;->format:Lcom/intertrust/wasabi/media/MediaInfo$Format;

    return-object v0
.end method

.method public getType()Lcom/intertrust/wasabi/media/MediaInfo$Type;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/intertrust/wasabi/media/MediaInfo;->type:Lcom/intertrust/wasabi/media/MediaInfo$Type;

    return-object v0
.end method
