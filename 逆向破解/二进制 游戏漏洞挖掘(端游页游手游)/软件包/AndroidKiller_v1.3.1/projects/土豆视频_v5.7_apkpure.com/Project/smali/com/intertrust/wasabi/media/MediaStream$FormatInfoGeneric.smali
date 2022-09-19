.class public Lcom/intertrust/wasabi/media/MediaStream$FormatInfoGeneric;
.super Lcom/intertrust/wasabi/media/MediaStream$FormatInfo;
.source "MediaStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intertrust/wasabi/media/MediaStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatInfoGeneric"
.end annotation


# instance fields
.field public clear_text_size:J

.field public content_id:Ljava/lang/String;

.field public iv:[B

.field public key:Ljava/lang/Object;

.field public license_data:Ljava/lang/String;

.field public ms3_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/intertrust/wasabi/media/MediaStream$FormatInfo;-><init>()V

    return-void
.end method
