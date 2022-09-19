.class public final enum Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/iab/vast/ad/VASTMediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeliveryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

.field public static final enum Progressive:Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

.field public static final enum Streaming:Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    const-string v1, "Streaming"

    invoke-direct {v0, v1, v2}, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;->Streaming:Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    new-instance v0, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    const-string v1, "Progressive"

    invoke-direct {v0, v1, v3}, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;->Progressive:Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    sget-object v1, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;->Streaming:Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;->Progressive:Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    aput-object v1, v0, v3

    sput-object v0, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;->$VALUES:[Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

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

.method public static parse(Ljava/lang/String;)Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;
    .locals 1

    sget-object v0, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;->Streaming:Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    invoke-virtual {v0}, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;->Streaming:Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;->Progressive:Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;
    .locals 1

    const-class v0, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    return-object v0
.end method

.method public static values()[Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;
    .locals 1

    sget-object v0, Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;->$VALUES:[Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    invoke-virtual {v0}, [Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/iab/vast/ad/VASTMediaFile$DeliveryType;

    return-object v0
.end method
