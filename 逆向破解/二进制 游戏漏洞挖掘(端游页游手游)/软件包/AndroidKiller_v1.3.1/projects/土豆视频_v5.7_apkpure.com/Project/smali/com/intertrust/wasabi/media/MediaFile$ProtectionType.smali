.class public final enum Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;
.super Ljava/lang/Enum;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intertrust/wasabi/media/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProtectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

.field public static final enum BBTS:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

.field public static final enum CENC:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

.field public static final enum CLEAR_TEXT:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

.field public static final enum DCF:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

.field public static final enum HLS_AES:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

.field public static final enum PDCF:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

.field public static final enum PIFF:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

.field public static final enum UNKNOWN:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->UNKNOWN:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    .line 36
    new-instance v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    const-string v1, "CLEAR_TEXT"

    invoke-direct {v0, v1, v4}, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->CLEAR_TEXT:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    .line 37
    new-instance v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    const-string v1, "DCF"

    invoke-direct {v0, v1, v5}, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->DCF:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    .line 38
    new-instance v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    const-string v1, "PDCF"

    invoke-direct {v0, v1, v6}, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->PDCF:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    .line 39
    new-instance v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    const-string v1, "PIFF"

    invoke-direct {v0, v1, v7}, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->PIFF:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    .line 40
    new-instance v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    const-string v1, "BBTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->BBTS:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    .line 41
    new-instance v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    const-string v1, "CENC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->CENC:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    .line 42
    new-instance v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    const-string v1, "HLS_AES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->HLS_AES:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    sget-object v1, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->UNKNOWN:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->CLEAR_TEXT:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->DCF:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->PDCF:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->PIFF:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->BBTS:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->CENC:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->HLS_AES:Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->$VALUES:[Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    return-object v0
.end method

.method public static values()[Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->$VALUES:[Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    invoke-virtual {v0}, [Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intertrust/wasabi/media/MediaFile$ProtectionType;

    return-object v0
.end method
