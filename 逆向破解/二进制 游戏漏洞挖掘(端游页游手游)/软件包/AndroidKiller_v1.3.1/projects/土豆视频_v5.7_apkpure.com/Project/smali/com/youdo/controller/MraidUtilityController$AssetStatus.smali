.class public final enum Lcom/youdo/controller/MraidUtilityController$AssetStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/controller/MraidUtilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youdo/controller/MraidUtilityController$AssetStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youdo/controller/MraidUtilityController$AssetStatus;

.field public static final enum INVALID:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

.field public static final enum UNKNOWN:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

.field public static final enum VALID:Lcom/youdo/controller/MraidUtilityController$AssetStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/youdo/controller/MraidUtilityController$AssetStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youdo/controller/MraidUtilityController$AssetStatus;->UNKNOWN:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    new-instance v0, Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v3}, Lcom/youdo/controller/MraidUtilityController$AssetStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youdo/controller/MraidUtilityController$AssetStatus;->VALID:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    new-instance v0, Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v4}, Lcom/youdo/controller/MraidUtilityController$AssetStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youdo/controller/MraidUtilityController$AssetStatus;->INVALID:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    sget-object v1, Lcom/youdo/controller/MraidUtilityController$AssetStatus;->UNKNOWN:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youdo/controller/MraidUtilityController$AssetStatus;->VALID:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youdo/controller/MraidUtilityController$AssetStatus;->INVALID:Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youdo/controller/MraidUtilityController$AssetStatus;->$VALUES:[Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youdo/controller/MraidUtilityController$AssetStatus;
    .locals 1

    const-class v0, Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    return-object v0
.end method

.method public static values()[Lcom/youdo/controller/MraidUtilityController$AssetStatus;
    .locals 1

    sget-object v0, Lcom/youdo/controller/MraidUtilityController$AssetStatus;->$VALUES:[Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    invoke-virtual {v0}, [Lcom/youdo/controller/MraidUtilityController$AssetStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youdo/controller/MraidUtilityController$AssetStatus;

    return-object v0
.end method
