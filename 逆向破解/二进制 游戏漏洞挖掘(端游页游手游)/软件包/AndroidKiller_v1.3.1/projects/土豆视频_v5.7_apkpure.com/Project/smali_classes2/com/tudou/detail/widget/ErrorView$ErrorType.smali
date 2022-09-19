.class public final enum Lcom/tudou/detail/widget/ErrorView$ErrorType;
.super Ljava/lang/Enum;
.source "ErrorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/ErrorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tudou/detail/widget/ErrorView$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tudou/detail/widget/ErrorView$ErrorType;

.field public static final enum EXCEPTION:Lcom/tudou/detail/widget/ErrorView$ErrorType;

.field public static final enum NET:Lcom/tudou/detail/widget/ErrorView$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/tudou/detail/widget/ErrorView$ErrorType;

    const-string v1, "NET"

    invoke-direct {v0, v1, v2}, Lcom/tudou/detail/widget/ErrorView$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/widget/ErrorView$ErrorType;->NET:Lcom/tudou/detail/widget/ErrorView$ErrorType;

    new-instance v0, Lcom/tudou/detail/widget/ErrorView$ErrorType;

    const-string v1, "EXCEPTION"

    invoke-direct {v0, v1, v3}, Lcom/tudou/detail/widget/ErrorView$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/widget/ErrorView$ErrorType;->EXCEPTION:Lcom/tudou/detail/widget/ErrorView$ErrorType;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tudou/detail/widget/ErrorView$ErrorType;

    sget-object v1, Lcom/tudou/detail/widget/ErrorView$ErrorType;->NET:Lcom/tudou/detail/widget/ErrorView$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tudou/detail/widget/ErrorView$ErrorType;->EXCEPTION:Lcom/tudou/detail/widget/ErrorView$ErrorType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tudou/detail/widget/ErrorView$ErrorType;->$VALUES:[Lcom/tudou/detail/widget/ErrorView$ErrorType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tudou/detail/widget/ErrorView$ErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/tudou/detail/widget/ErrorView$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/ErrorView$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/tudou/detail/widget/ErrorView$ErrorType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/tudou/detail/widget/ErrorView$ErrorType;->$VALUES:[Lcom/tudou/detail/widget/ErrorView$ErrorType;

    invoke-virtual {v0}, [Lcom/tudou/detail/widget/ErrorView$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tudou/detail/widget/ErrorView$ErrorType;

    return-object v0
.end method
