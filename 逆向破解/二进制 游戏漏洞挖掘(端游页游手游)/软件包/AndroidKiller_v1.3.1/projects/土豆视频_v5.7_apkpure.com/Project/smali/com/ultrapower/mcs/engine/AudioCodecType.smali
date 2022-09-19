.class public final enum Lcom/ultrapower/mcs/engine/AudioCodecType;
.super Ljava/lang/Enum;
.source "AudioCodecType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ultrapower/mcs/engine/AudioCodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ultrapower/mcs/engine/AudioCodecType;

.field public static final enum AMRWB:Lcom/ultrapower/mcs/engine/AudioCodecType;

.field public static final enum PCMU:Lcom/ultrapower/mcs/engine/AudioCodecType;

.field public static final enum SILK:Lcom/ultrapower/mcs/engine/AudioCodecType;

.field public static final enum iLBC:Lcom/ultrapower/mcs/engine/AudioCodecType;

.field public static final enum iSAC:Lcom/ultrapower/mcs/engine/AudioCodecType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/ultrapower/mcs/engine/AudioCodecType;

    const-string v1, "iSAC"

    invoke-direct {v0, v1, v3, v3}, Lcom/ultrapower/mcs/engine/AudioCodecType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/AudioCodecType;->iSAC:Lcom/ultrapower/mcs/engine/AudioCodecType;

    .line 10
    new-instance v0, Lcom/ultrapower/mcs/engine/AudioCodecType;

    const-string v1, "PCMU"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lcom/ultrapower/mcs/engine/AudioCodecType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/AudioCodecType;->PCMU:Lcom/ultrapower/mcs/engine/AudioCodecType;

    .line 11
    new-instance v0, Lcom/ultrapower/mcs/engine/AudioCodecType;

    const-string v1, "iLBC"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v5, v2}, Lcom/ultrapower/mcs/engine/AudioCodecType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/AudioCodecType;->iLBC:Lcom/ultrapower/mcs/engine/AudioCodecType;

    .line 12
    new-instance v0, Lcom/ultrapower/mcs/engine/AudioCodecType;

    const-string v1, "AMRWB"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v6, v2}, Lcom/ultrapower/mcs/engine/AudioCodecType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/AudioCodecType;->AMRWB:Lcom/ultrapower/mcs/engine/AudioCodecType;

    .line 13
    new-instance v0, Lcom/ultrapower/mcs/engine/AudioCodecType;

    const-string v1, "SILK"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v7, v2}, Lcom/ultrapower/mcs/engine/AudioCodecType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/AudioCodecType;->SILK:Lcom/ultrapower/mcs/engine/AudioCodecType;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ultrapower/mcs/engine/AudioCodecType;

    sget-object v1, Lcom/ultrapower/mcs/engine/AudioCodecType;->iSAC:Lcom/ultrapower/mcs/engine/AudioCodecType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ultrapower/mcs/engine/AudioCodecType;->PCMU:Lcom/ultrapower/mcs/engine/AudioCodecType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ultrapower/mcs/engine/AudioCodecType;->iLBC:Lcom/ultrapower/mcs/engine/AudioCodecType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ultrapower/mcs/engine/AudioCodecType;->AMRWB:Lcom/ultrapower/mcs/engine/AudioCodecType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ultrapower/mcs/engine/AudioCodecType;->SILK:Lcom/ultrapower/mcs/engine/AudioCodecType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ultrapower/mcs/engine/AudioCodecType;->$VALUES:[Lcom/ultrapower/mcs/engine/AudioCodecType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/ultrapower/mcs/engine/AudioCodecType;->value:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ultrapower/mcs/engine/AudioCodecType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/ultrapower/mcs/engine/AudioCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ultrapower/mcs/engine/AudioCodecType;

    return-object v0
.end method

.method public static values()[Lcom/ultrapower/mcs/engine/AudioCodecType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/ultrapower/mcs/engine/AudioCodecType;->$VALUES:[Lcom/ultrapower/mcs/engine/AudioCodecType;

    invoke-virtual {v0}, [Lcom/ultrapower/mcs/engine/AudioCodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ultrapower/mcs/engine/AudioCodecType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/ultrapower/mcs/engine/AudioCodecType;->value:I

    return v0
.end method
