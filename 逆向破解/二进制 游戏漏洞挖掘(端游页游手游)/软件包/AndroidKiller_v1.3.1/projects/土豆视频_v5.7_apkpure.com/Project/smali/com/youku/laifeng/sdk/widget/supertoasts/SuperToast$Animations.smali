.class public final enum Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;
.super Ljava/lang/Enum;
.source "SuperToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Animations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

.field public static final enum FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

.field public static final enum FLYIN:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

.field public static final enum POPUP:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

.field public static final enum SCALE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    const-string v1, "FADE"

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 94
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    const-string v1, "FLYIN"

    invoke-direct {v0, v1, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FLYIN:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 95
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    const-string v1, "SCALE"

    invoke-direct {v0, v1, v4}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->SCALE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 96
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    const-string v1, "POPUP"

    invoke-direct {v0, v1, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->POPUP:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FLYIN:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->SCALE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->POPUP:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    aput-object v1, v0, v5

    sput-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->$VALUES:[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    return-object v0
.end method

.method public static values()[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->$VALUES:[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    invoke-virtual {v0}, [Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    return-object v0
.end method
