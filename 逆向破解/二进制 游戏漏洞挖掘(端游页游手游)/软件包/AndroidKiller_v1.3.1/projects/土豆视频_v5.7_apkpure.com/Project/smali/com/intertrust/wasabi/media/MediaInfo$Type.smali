.class public final enum Lcom/intertrust/wasabi/media/MediaInfo$Type;
.super Ljava/lang/Enum;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intertrust/wasabi/media/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intertrust/wasabi/media/MediaInfo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intertrust/wasabi/media/MediaInfo$Type;

.field public static final enum AUDIO:Lcom/intertrust/wasabi/media/MediaInfo$Type;

.field public static final enum UNKNOWN:Lcom/intertrust/wasabi/media/MediaInfo$Type;

.field public static final enum VIDEO:Lcom/intertrust/wasabi/media/MediaInfo$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/intertrust/wasabi/media/MediaInfo$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/media/MediaInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/media/MediaInfo$Type;->UNKNOWN:Lcom/intertrust/wasabi/media/MediaInfo$Type;

    .line 28
    new-instance v0, Lcom/intertrust/wasabi/media/MediaInfo$Type;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v3}, Lcom/intertrust/wasabi/media/MediaInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/media/MediaInfo$Type;->AUDIO:Lcom/intertrust/wasabi/media/MediaInfo$Type;

    .line 29
    new-instance v0, Lcom/intertrust/wasabi/media/MediaInfo$Type;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/intertrust/wasabi/media/MediaInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/media/MediaInfo$Type;->VIDEO:Lcom/intertrust/wasabi/media/MediaInfo$Type;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/intertrust/wasabi/media/MediaInfo$Type;

    sget-object v1, Lcom/intertrust/wasabi/media/MediaInfo$Type;->UNKNOWN:Lcom/intertrust/wasabi/media/MediaInfo$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/intertrust/wasabi/media/MediaInfo$Type;->AUDIO:Lcom/intertrust/wasabi/media/MediaInfo$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intertrust/wasabi/media/MediaInfo$Type;->VIDEO:Lcom/intertrust/wasabi/media/MediaInfo$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/intertrust/wasabi/media/MediaInfo$Type;->$VALUES:[Lcom/intertrust/wasabi/media/MediaInfo$Type;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intertrust/wasabi/media/MediaInfo$Type;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/intertrust/wasabi/media/MediaInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intertrust/wasabi/media/MediaInfo$Type;

    return-object v0
.end method

.method public static values()[Lcom/intertrust/wasabi/media/MediaInfo$Type;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/intertrust/wasabi/media/MediaInfo$Type;->$VALUES:[Lcom/intertrust/wasabi/media/MediaInfo$Type;

    invoke-virtual {v0}, [Lcom/intertrust/wasabi/media/MediaInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intertrust/wasabi/media/MediaInfo$Type;

    return-object v0
.end method
