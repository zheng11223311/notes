.class public final enum Lcom/youdo/view/MraidView$ACTION;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youdo/view/MraidView$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youdo/view/MraidView$ACTION;

.field public static final enum PLAY_AUDIO:Lcom/youdo/view/MraidView$ACTION;

.field public static final enum PLAY_VIDEO:Lcom/youdo/view/MraidView$ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/youdo/view/MraidView$ACTION;

    const-string v1, "PLAY_AUDIO"

    invoke-direct {v0, v1, v2}, Lcom/youdo/view/MraidView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youdo/view/MraidView$ACTION;->PLAY_AUDIO:Lcom/youdo/view/MraidView$ACTION;

    new-instance v0, Lcom/youdo/view/MraidView$ACTION;

    const-string v1, "PLAY_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/youdo/view/MraidView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youdo/view/MraidView$ACTION;->PLAY_VIDEO:Lcom/youdo/view/MraidView$ACTION;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/youdo/view/MraidView$ACTION;

    sget-object v1, Lcom/youdo/view/MraidView$ACTION;->PLAY_AUDIO:Lcom/youdo/view/MraidView$ACTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youdo/view/MraidView$ACTION;->PLAY_VIDEO:Lcom/youdo/view/MraidView$ACTION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/youdo/view/MraidView$ACTION;->$VALUES:[Lcom/youdo/view/MraidView$ACTION;

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

.method public static valueOf(Ljava/lang/String;)Lcom/youdo/view/MraidView$ACTION;
    .locals 1

    const-class v0, Lcom/youdo/view/MraidView$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youdo/view/MraidView$ACTION;

    return-object v0
.end method

.method public static values()[Lcom/youdo/view/MraidView$ACTION;
    .locals 1

    sget-object v0, Lcom/youdo/view/MraidView$ACTION;->$VALUES:[Lcom/youdo/view/MraidView$ACTION;

    invoke-virtual {v0}, [Lcom/youdo/view/MraidView$ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youdo/view/MraidView$ACTION;

    return-object v0
.end method
