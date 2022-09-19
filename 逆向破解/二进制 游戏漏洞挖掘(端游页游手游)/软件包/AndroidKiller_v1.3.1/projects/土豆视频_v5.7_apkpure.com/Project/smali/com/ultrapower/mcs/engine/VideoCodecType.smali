.class public final enum Lcom/ultrapower/mcs/engine/VideoCodecType;
.super Ljava/lang/Enum;
.source "VideoCodecType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ultrapower/mcs/engine/VideoCodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ultrapower/mcs/engine/VideoCodecType;

.field public static final enum H264:Lcom/ultrapower/mcs/engine/VideoCodecType;

.field public static final enum VP8:Lcom/ultrapower/mcs/engine/VideoCodecType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/ultrapower/mcs/engine/VideoCodecType;

    const-string v1, "VP8"

    invoke-direct {v0, v1, v2, v2}, Lcom/ultrapower/mcs/engine/VideoCodecType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/VideoCodecType;->VP8:Lcom/ultrapower/mcs/engine/VideoCodecType;

    .line 15
    new-instance v0, Lcom/ultrapower/mcs/engine/VideoCodecType;

    const-string v1, "H264"

    invoke-direct {v0, v1, v3, v3}, Lcom/ultrapower/mcs/engine/VideoCodecType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/VideoCodecType;->H264:Lcom/ultrapower/mcs/engine/VideoCodecType;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ultrapower/mcs/engine/VideoCodecType;

    sget-object v1, Lcom/ultrapower/mcs/engine/VideoCodecType;->VP8:Lcom/ultrapower/mcs/engine/VideoCodecType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ultrapower/mcs/engine/VideoCodecType;->H264:Lcom/ultrapower/mcs/engine/VideoCodecType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ultrapower/mcs/engine/VideoCodecType;->$VALUES:[Lcom/ultrapower/mcs/engine/VideoCodecType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/ultrapower/mcs/engine/VideoCodecType;->value:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ultrapower/mcs/engine/VideoCodecType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/ultrapower/mcs/engine/VideoCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ultrapower/mcs/engine/VideoCodecType;

    return-object v0
.end method

.method public static values()[Lcom/ultrapower/mcs/engine/VideoCodecType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/ultrapower/mcs/engine/VideoCodecType;->$VALUES:[Lcom/ultrapower/mcs/engine/VideoCodecType;

    invoke-virtual {v0}, [Lcom/ultrapower/mcs/engine/VideoCodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ultrapower/mcs/engine/VideoCodecType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/ultrapower/mcs/engine/VideoCodecType;->value:I

    return v0
.end method
