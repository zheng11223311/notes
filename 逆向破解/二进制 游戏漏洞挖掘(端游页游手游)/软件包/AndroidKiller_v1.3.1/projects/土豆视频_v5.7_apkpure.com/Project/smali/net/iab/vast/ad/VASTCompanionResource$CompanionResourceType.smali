.class public final enum Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/iab/vast/ad/VASTCompanionResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompanionResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

.field public static final enum HTML:Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

.field public static final enum IFrame:Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

.field public static final enum Static:Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    const-string v1, "Static"

    invoke-direct {v0, v1, v2}, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;->Static:Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    new-instance v0, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    const-string v1, "IFrame"

    invoke-direct {v0, v1, v3}, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;->IFrame:Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    new-instance v0, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v4}, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;->HTML:Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    sget-object v1, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;->Static:Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;->IFrame:Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    aput-object v1, v0, v3

    sget-object v1, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;->HTML:Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    aput-object v1, v0, v4

    sput-object v0, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;->$VALUES:[Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

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

.method public static valueOf(Ljava/lang/String;)Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;
    .locals 1

    const-class v0, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    return-object v0
.end method

.method public static values()[Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;
    .locals 1

    sget-object v0, Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;->$VALUES:[Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    invoke-virtual {v0}, [Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/iab/vast/ad/VASTCompanionResource$CompanionResourceType;

    return-object v0
.end method
