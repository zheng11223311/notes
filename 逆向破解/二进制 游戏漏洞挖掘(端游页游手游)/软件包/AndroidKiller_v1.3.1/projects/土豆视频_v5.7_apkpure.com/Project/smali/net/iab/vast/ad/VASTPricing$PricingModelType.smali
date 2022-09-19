.class public final enum Lnet/iab/vast/ad/VASTPricing$PricingModelType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/iab/vast/ad/VASTPricing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PricingModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/iab/vast/ad/VASTPricing$PricingModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/iab/vast/ad/VASTPricing$PricingModelType;

.field public static final enum CPC:Lnet/iab/vast/ad/VASTPricing$PricingModelType;

.field public static final enum CPE:Lnet/iab/vast/ad/VASTPricing$PricingModelType;

.field public static final enum CPM:Lnet/iab/vast/ad/VASTPricing$PricingModelType;

.field public static final enum CPV:Lnet/iab/vast/ad/VASTPricing$PricingModelType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    const-string v1, "CPC"

    const-string v2, "cpc"

    invoke-direct {v0, v1, v3, v2}, Lnet/iab/vast/ad/VASTPricing$PricingModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/iab/vast/ad/VASTPricing$PricingModelType;->CPC:Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    new-instance v0, Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    const-string v1, "CPE"

    const-string v2, "cpe"

    invoke-direct {v0, v1, v4, v2}, Lnet/iab/vast/ad/VASTPricing$PricingModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/iab/vast/ad/VASTPricing$PricingModelType;->CPE:Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    new-instance v0, Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    const-string v1, "CPM"

    const-string v2, "cpm"

    invoke-direct {v0, v1, v5, v2}, Lnet/iab/vast/ad/VASTPricing$PricingModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/iab/vast/ad/VASTPricing$PricingModelType;->CPM:Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    new-instance v0, Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    const-string v1, "CPV"

    const-string v2, "cpv"

    invoke-direct {v0, v1, v6, v2}, Lnet/iab/vast/ad/VASTPricing$PricingModelType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/iab/vast/ad/VASTPricing$PricingModelType;->CPV:Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    sget-object v1, Lnet/iab/vast/ad/VASTPricing$PricingModelType;->CPC:Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    aput-object v1, v0, v3

    sget-object v1, Lnet/iab/vast/ad/VASTPricing$PricingModelType;->CPE:Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    aput-object v1, v0, v4

    sget-object v1, Lnet/iab/vast/ad/VASTPricing$PricingModelType;->CPM:Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    aput-object v1, v0, v5

    sget-object v1, Lnet/iab/vast/ad/VASTPricing$PricingModelType;->CPV:Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    aput-object v1, v0, v6

    sput-object v0, Lnet/iab/vast/ad/VASTPricing$PricingModelType;->$VALUES:[Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lnet/iab/vast/ad/VASTPricing$PricingModelType;->value:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lnet/iab/vast/ad/VASTPricing$PricingModelType;
    .locals 5

    invoke-static {}, Lnet/iab/vast/ad/VASTPricing$PricingModelType;->values()[Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lnet/iab/vast/ad/VASTPricing$PricingModelType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/iab/vast/ad/VASTPricing$PricingModelType;
    .locals 1

    const-class v0, Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    return-object v0
.end method

.method public static values()[Lnet/iab/vast/ad/VASTPricing$PricingModelType;
    .locals 1

    sget-object v0, Lnet/iab/vast/ad/VASTPricing$PricingModelType;->$VALUES:[Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    invoke-virtual {v0}, [Lnet/iab/vast/ad/VASTPricing$PricingModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/iab/vast/ad/VASTPricing$PricingModelType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/iab/vast/ad/VASTPricing$PricingModelType;->value:Ljava/lang/String;

    return-object v0
.end method
