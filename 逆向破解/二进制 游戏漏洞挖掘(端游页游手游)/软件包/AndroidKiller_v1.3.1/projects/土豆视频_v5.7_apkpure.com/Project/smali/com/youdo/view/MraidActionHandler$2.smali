.class synthetic Lcom/youdo/view/MraidActionHandler$2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/view/MraidActionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$youdo$view$MraidView$ACTION:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/youdo/view/MraidView$ACTION;->values()[Lcom/youdo/view/MraidView$ACTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/youdo/view/MraidActionHandler$2;->$SwitchMap$com$youdo$view$MraidView$ACTION:[I

    :try_start_0
    sget-object v0, Lcom/youdo/view/MraidActionHandler$2;->$SwitchMap$com$youdo$view$MraidView$ACTION:[I

    sget-object v1, Lcom/youdo/view/MraidView$ACTION;->PLAY_AUDIO:Lcom/youdo/view/MraidView$ACTION;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/youdo/view/MraidActionHandler$2;->$SwitchMap$com$youdo$view$MraidView$ACTION:[I

    sget-object v1, Lcom/youdo/view/MraidView$ACTION;->PLAY_VIDEO:Lcom/youdo/view/MraidView$ACTION;

    invoke-virtual {v1}, Lcom/youdo/view/MraidView$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
