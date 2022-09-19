.class public final enum Lcom/youku/gamecenter/present/PresentStatus;
.super Ljava/lang/Enum;
.source "PresentStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/gamecenter/present/PresentStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/gamecenter/present/PresentStatus;

.field public static final enum STATUS_CHECK:Lcom/youku/gamecenter/present/PresentStatus;

.field public static final enum STATUS_GET:Lcom/youku/gamecenter/present/PresentStatus;

.field public static final enum STATUS_GET_ERROR_TIME:Lcom/youku/gamecenter/present/PresentStatus;

.field public static final enum STATUS_ING:Lcom/youku/gamecenter/present/PresentStatus;

.field public static final enum STATUS_NULL:Lcom/youku/gamecenter/present/PresentStatus;

.field public static final enum STATUS_OVERDUE:Lcom/youku/gamecenter/present/PresentStatus;


# instance fields
.field public bg:I

.field public clickable:Z

.field public text:I

.field public text_color:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 8
    new-instance v0, Lcom/youku/gamecenter/present/PresentStatus;

    const-string v1, "STATUS_GET"

    const/4 v2, 0x0

    sget v3, Lcom/youku/gamecenter/R$string;->game_present_button_get:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->game_action_bg_selector_tudou:I

    sget v5, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/youku/gamecenter/present/PresentStatus;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_GET:Lcom/youku/gamecenter/present/PresentStatus;

    .line 13
    new-instance v0, Lcom/youku/gamecenter/present/PresentStatus;

    const-string v1, "STATUS_GET_ERROR_TIME"

    const/4 v2, 0x1

    sget v3, Lcom/youku/gamecenter/R$string;->game_present_button_get:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->game_action_bg_selector_tudou:I

    sget v5, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/youku/gamecenter/present/PresentStatus;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_GET_ERROR_TIME:Lcom/youku/gamecenter/present/PresentStatus;

    .line 18
    new-instance v0, Lcom/youku/gamecenter/present/PresentStatus;

    const-string v1, "STATUS_CHECK"

    const/4 v2, 0x2

    sget v3, Lcom/youku/gamecenter/R$string;->game_present_button_check:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->button_white_presnet:I

    sget v5, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_white_background:I

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/youku/gamecenter/present/PresentStatus;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_CHECK:Lcom/youku/gamecenter/present/PresentStatus;

    .line 22
    new-instance v0, Lcom/youku/gamecenter/present/PresentStatus;

    const-string v1, "STATUS_NULL"

    const/4 v2, 0x3

    sget v3, Lcom/youku/gamecenter/R$string;->game_present_button_null:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->game_category_gridview_item_pressed:I

    sget v5, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/youku/gamecenter/present/PresentStatus;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_NULL:Lcom/youku/gamecenter/present/PresentStatus;

    .line 27
    new-instance v0, Lcom/youku/gamecenter/present/PresentStatus;

    const-string v1, "STATUS_OVERDUE"

    const/4 v2, 0x4

    sget v3, Lcom/youku/gamecenter/R$string;->game_present_button_overdue:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->game_category_gridview_item_pressed:I

    sget v5, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/youku/gamecenter/present/PresentStatus;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_OVERDUE:Lcom/youku/gamecenter/present/PresentStatus;

    .line 32
    new-instance v0, Lcom/youku/gamecenter/present/PresentStatus;

    const-string v1, "STATUS_ING"

    const/4 v2, 0x5

    sget v3, Lcom/youku/gamecenter/R$string;->game_present_button_ing:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->game_category_gridview_item_pressed:I

    sget v5, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/youku/gamecenter/present/PresentStatus;-><init>(Ljava/lang/String;IIIIZ)V

    sput-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_ING:Lcom/youku/gamecenter/present/PresentStatus;

    .line 5
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/youku/gamecenter/present/PresentStatus;

    const/4 v1, 0x0

    sget-object v2, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_GET:Lcom/youku/gamecenter/present/PresentStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_GET_ERROR_TIME:Lcom/youku/gamecenter/present/PresentStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_CHECK:Lcom/youku/gamecenter/present/PresentStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_NULL:Lcom/youku/gamecenter/present/PresentStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_OVERDUE:Lcom/youku/gamecenter/present/PresentStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_ING:Lcom/youku/gamecenter/present/PresentStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/gamecenter/present/PresentStatus;->$VALUES:[Lcom/youku/gamecenter/present/PresentStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 0
    .param p3, "text"    # I
    .param p4, "bg"    # I
    .param p5, "text_color"    # I
    .param p6, "clickable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/youku/gamecenter/present/PresentStatus;->text:I

    .line 43
    iput p4, p0, Lcom/youku/gamecenter/present/PresentStatus;->bg:I

    .line 44
    iput p5, p0, Lcom/youku/gamecenter/present/PresentStatus;->text_color:I

    .line 45
    iput-boolean p6, p0, Lcom/youku/gamecenter/present/PresentStatus;->clickable:Z

    .line 46
    return-void
.end method

.method public static switchPresentStatus(I)Lcom/youku/gamecenter/present/PresentStatus;
    .locals 1
    .param p0, "status_num"    # I

    .prologue
    .line 49
    packed-switch p0, :pswitch_data_0

    .line 61
    sget-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_GET:Lcom/youku/gamecenter/present/PresentStatus;

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    sget-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_GET_ERROR_TIME:Lcom/youku/gamecenter/present/PresentStatus;

    goto :goto_0

    .line 53
    :pswitch_1
    sget-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_GET:Lcom/youku/gamecenter/present/PresentStatus;

    goto :goto_0

    .line 55
    :pswitch_2
    sget-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_NULL:Lcom/youku/gamecenter/present/PresentStatus;

    goto :goto_0

    .line 57
    :pswitch_3
    sget-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_OVERDUE:Lcom/youku/gamecenter/present/PresentStatus;

    goto :goto_0

    .line 59
    :pswitch_4
    sget-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_CHECK:Lcom/youku/gamecenter/present/PresentStatus;

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/gamecenter/present/PresentStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/youku/gamecenter/present/PresentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/present/PresentStatus;

    return-object v0
.end method

.method public static values()[Lcom/youku/gamecenter/present/PresentStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/youku/gamecenter/present/PresentStatus;->$VALUES:[Lcom/youku/gamecenter/present/PresentStatus;

    invoke-virtual {v0}, [Lcom/youku/gamecenter/present/PresentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/gamecenter/present/PresentStatus;

    return-object v0
.end method
