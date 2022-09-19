.class public final enum Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;
.super Ljava/lang/Enum;
.source "SuperToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

.field public static final enum BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

.field public static final enum PROGRESS:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

.field public static final enum PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

.field public static final enum STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    const-string v1, "STANDARD"

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 177
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    const-string v1, "PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 182
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    const-string v1, "PROGRESS_HORIZONTAL"

    invoke-direct {v0, v1, v4}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 187
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    const-string v1, "BUTTON"

    invoke-direct {v0, v1, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 167
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->$VALUES:[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

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
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    const-class v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    return-object v0
.end method

.method public static values()[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->$VALUES:[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    invoke-virtual {v0}, [Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    return-object v0
.end method
