.class public final enum Lcom/ultrapower/mcs/engine/VideoCodecLevel;
.super Ljava/lang/Enum;
.source "VideoCodecLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ultrapower/mcs/engine/VideoCodecLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ultrapower/mcs/engine/VideoCodecLevel;

.field public static final enum kCodecLevelHD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

.field public static final enum kCodecLevelLSD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

.field public static final enum kCodecLevelSD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 11
    new-instance v0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    const-string v1, "kCodecLevelLSD"

    invoke-direct {v0, v1, v4, v2}, Lcom/ultrapower/mcs/engine/VideoCodecLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->kCodecLevelLSD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    .line 15
    new-instance v0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    const-string v1, "kCodecLevelSD"

    invoke-direct {v0, v1, v2, v3}, Lcom/ultrapower/mcs/engine/VideoCodecLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->kCodecLevelSD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    .line 19
    new-instance v0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    const-string v1, "kCodecLevelHD"

    invoke-direct {v0, v1, v3, v5}, Lcom/ultrapower/mcs/engine/VideoCodecLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->kCodecLevelHD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    .line 7
    new-array v0, v5, [Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    sget-object v1, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->kCodecLevelLSD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->kCodecLevelSD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->kCodecLevelHD:Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->$VALUES:[Lcom/ultrapower/mcs/engine/VideoCodecLevel;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->value:I

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ultrapower/mcs/engine/VideoCodecLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    return-object v0
.end method

.method public static values()[Lcom/ultrapower/mcs/engine/VideoCodecLevel;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->$VALUES:[Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    invoke-virtual {v0}, [Lcom/ultrapower/mcs/engine/VideoCodecLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ultrapower/mcs/engine/VideoCodecLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ultrapower/mcs/engine/VideoCodecLevel;->value:I

    return v0
.end method
