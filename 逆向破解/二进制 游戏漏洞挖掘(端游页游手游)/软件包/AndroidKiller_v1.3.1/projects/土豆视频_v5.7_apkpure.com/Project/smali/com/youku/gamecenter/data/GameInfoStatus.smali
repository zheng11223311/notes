.class public final enum Lcom/youku/gamecenter/data/GameInfoStatus;
.super Ljava/lang/Enum;
.source "GameInfoStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/gamecenter/data/GameInfoStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/gamecenter/data/GameInfoStatus;

.field public static final enum STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

.field public static final enum STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

.field public static final enum STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

.field public static final enum STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

.field public static final enum STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

.field public static final enum STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

.field public static final enum STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

.field public static final enum STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;


# instance fields
.field public actionButtonBg:I

.field public detailPageBottomBtnBgId:I

.field public detailPageBottomBtnTxtColorId:I

.field public detailPageDownloadProgressBarColorId:I

.field public detailPageResId:I

.field public detailPageTitleId:I

.field public downloadBtnBgColorId:I

.field public downloadBtnProgressColorId:I

.field public downloadBtnProgressVisible:I

.field public downloadBtnTitleColorId:I

.field public homeFragmentButtonResId:I

.field public homeFragmnetButtonTextColorId:I

.field public homePageTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 10
    new-instance v0, Lcom/youku/gamecenter/data/GameInfoStatus;

    const-string v1, "STATUS_NEW"

    const/4 v2, 0x0

    sget v3, Lcom/youku/gamecenter/R$string;->str_download:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->action_download_in:I

    sget v5, Lcom/youku/gamecenter/R$string;->str_download:I

    sget v6, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterDownloadBackground_canbedownload:I

    sget v7, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_button_bg:I

    sget v8, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_box_button_text_color_at_blue_background:I

    sget v9, Lcom/youku/gamecenter/R$drawable;->game_action_bg_selector_tudou:I

    sget v10, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    const/4 v11, 0x4

    sget v12, Lcom/youku/gamecenter/R$color;->title_backgroud_tudou:I

    sget v13, Lcom/youku/gamecenter/R$drawable;->game_action_bg_selector_tudou:I

    sget v14, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    sget v15, Lcom/youku/gamecenter/R$drawable;->game_action_bg_selector_tudou:I

    invoke-direct/range {v0 .. v15}, Lcom/youku/gamecenter/data/GameInfoStatus;-><init>(Ljava/lang/String;IIIIIIIIIIIIII)V

    sput-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 26
    new-instance v0, Lcom/youku/gamecenter/data/GameInfoStatus;

    const-string v1, "STATUS_DOWNLOAD_ING"

    const/4 v2, 0x1

    sget v3, Lcom/youku/gamecenter/R$string;->str_pause:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->action_pause_in:I

    sget v5, Lcom/youku/gamecenter/R$string;->str_pause:I

    sget v6, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterDownloadBackground:I

    sget v7, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_button_white:I

    sget v8, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_box_button_text_color_at_white_background:I

    sget v9, Lcom/youku/gamecenter/R$drawable;->game_card_action_bg:I

    sget v10, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_grey_background:I

    const/4 v11, 0x0

    sget v12, Lcom/youku/gamecenter/R$color;->title_backgroud_tudou:I

    sget v13, Lcom/youku/gamecenter/R$drawable;->game_action_bg_gray:I

    sget v14, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    sget v15, Lcom/youku/gamecenter/R$drawable;->game_action_bg_gray:I

    invoke-direct/range {v0 .. v15}, Lcom/youku/gamecenter/data/GameInfoStatus;-><init>(Ljava/lang/String;IIIIIIIIIIIIII)V

    sput-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 42
    new-instance v0, Lcom/youku/gamecenter/data/GameInfoStatus;

    const-string v1, "STATUS_DOWNLOAD_PAUSE"

    const/4 v2, 0x2

    sget v3, Lcom/youku/gamecenter/R$string;->str_continue:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->action_continue_in:I

    sget v5, Lcom/youku/gamecenter/R$string;->str_continue:I

    sget v6, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterDownloadBackground_paused:I

    sget v7, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_button_bg:I

    sget v8, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_box_button_text_color_at_white_background:I

    sget v9, Lcom/youku/gamecenter/R$drawable;->game_card_action_bg:I

    sget v10, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_grey_background:I

    const/4 v11, 0x0

    sget v12, Lcom/youku/gamecenter/R$color;->title_backgroud_tudou:I

    sget v13, Lcom/youku/gamecenter/R$drawable;->game_action_bg_gray:I

    sget v14, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    sget v15, Lcom/youku/gamecenter/R$drawable;->game_action_bg_gray:I

    invoke-direct/range {v0 .. v15}, Lcom/youku/gamecenter/data/GameInfoStatus;-><init>(Ljava/lang/String;IIIIIIIIIIIIII)V

    sput-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 58
    new-instance v0, Lcom/youku/gamecenter/data/GameInfoStatus;

    const-string v1, "STATUS_INSTALLED"

    const/4 v2, 0x3

    sget v3, Lcom/youku/gamecenter/R$string;->str_open:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->action_open_in:I

    sget v5, Lcom/youku/gamecenter/R$string;->str_open:I

    sget v6, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterDownloadBackground:I

    sget v7, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_button_white:I

    sget v8, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_box_button_text_color_at_white_background:I

    sget v9, Lcom/youku/gamecenter/R$drawable;->game_card_action_bg:I

    sget v10, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_grey_background:I

    const/4 v11, 0x4

    sget v12, Lcom/youku/gamecenter/R$drawable;->game_action_bg_tudou:I

    sget v13, Lcom/youku/gamecenter/R$drawable;->game_card_action_bg:I

    sget v14, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_grey_background:I

    sget v15, Lcom/youku/gamecenter/R$drawable;->game_card_action_bg_big:I

    invoke-direct/range {v0 .. v15}, Lcom/youku/gamecenter/data/GameInfoStatus;-><init>(Ljava/lang/String;IIIIIIIIIIIIII)V

    sput-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 74
    new-instance v0, Lcom/youku/gamecenter/data/GameInfoStatus;

    const-string v1, "STATUS_UPDATEABLE"

    const/4 v2, 0x4

    sget v3, Lcom/youku/gamecenter/R$string;->str_updates:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->action_update_in:I

    sget v5, Lcom/youku/gamecenter/R$string;->str_updates:I

    sget v6, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterDownloadBackground:I

    sget v7, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_button_bg:I

    sget v8, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_box_button_text_color_at_blue_background:I

    sget v9, Lcom/youku/gamecenter/R$drawable;->game_action_bg_selector_tudou:I

    sget v10, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    const/4 v11, 0x4

    sget v12, Lcom/youku/gamecenter/R$drawable;->game_action_bg_tudou:I

    sget v13, Lcom/youku/gamecenter/R$drawable;->game_action_bg_selector_tudou:I

    sget v14, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    sget v15, Lcom/youku/gamecenter/R$drawable;->game_action_bg_selector_tudou:I

    invoke-direct/range {v0 .. v15}, Lcom/youku/gamecenter/data/GameInfoStatus;-><init>(Ljava/lang/String;IIIIIIIIIIIIII)V

    sput-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 90
    new-instance v0, Lcom/youku/gamecenter/data/GameInfoStatus;

    const-string v1, "STATUS_DOWNLOAD_DONE"

    const/4 v2, 0x5

    sget v3, Lcom/youku/gamecenter/R$string;->str_install:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->action_install_in:I

    sget v5, Lcom/youku/gamecenter/R$string;->str_install:I

    sget v6, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterDownloadBackground_install:I

    sget v7, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_button_white:I

    sget v8, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_box_button_text_color_at_blue_background:I

    sget v9, Lcom/youku/gamecenter/R$drawable;->game_action_bg_yellow:I

    sget v10, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    const/4 v11, 0x4

    sget v12, Lcom/youku/gamecenter/R$drawable;->game_action_bg_tudou:I

    sget v13, Lcom/youku/gamecenter/R$drawable;->game_action_bg_yellow:I

    sget v14, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    sget v15, Lcom/youku/gamecenter/R$drawable;->game_action_bg_tudou:I

    invoke-direct/range {v0 .. v15}, Lcom/youku/gamecenter/data/GameInfoStatus;-><init>(Ljava/lang/String;IIIIIIIIIIIIII)V

    sput-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 106
    new-instance v0, Lcom/youku/gamecenter/data/GameInfoStatus;

    const-string v1, "STATUS_DOWNLOAD_STOP"

    const/4 v2, 0x6

    sget v3, Lcom/youku/gamecenter/R$string;->str_continue:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->action_continue_in:I

    sget v5, Lcom/youku/gamecenter/R$string;->str_continue:I

    sget v6, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterDownloadBackground_paused:I

    sget v7, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_button_bg:I

    sget v8, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_box_button_text_color_at_white_background:I

    sget v9, Lcom/youku/gamecenter/R$drawable;->game_card_action_bg:I

    sget v10, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_grey_background:I

    const/4 v11, 0x0

    sget v12, Lcom/youku/gamecenter/R$drawable;->game_action_bg_tudou:I

    sget v13, Lcom/youku/gamecenter/R$drawable;->game_action_bg_gray:I

    sget v14, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    sget v15, Lcom/youku/gamecenter/R$drawable;->game_action_bg_gray:I

    invoke-direct/range {v0 .. v15}, Lcom/youku/gamecenter/data/GameInfoStatus;-><init>(Ljava/lang/String;IIIIIIIIIIIIII)V

    sput-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 123
    new-instance v0, Lcom/youku/gamecenter/data/GameInfoStatus;

    const-string v1, "STATUS_DOWNLOAD_PENDING"

    const/4 v2, 0x7

    sget v3, Lcom/youku/gamecenter/R$string;->str_pending:I

    sget v4, Lcom/youku/gamecenter/R$drawable;->action_continue_in:I

    sget v5, Lcom/youku/gamecenter/R$string;->str_pending:I

    sget v6, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterDownloadBackground_paused:I

    sget v7, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_button_bg:I

    sget v8, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gamecenter_box_button_text_color_at_white_background:I

    sget v9, Lcom/youku/gamecenter/R$drawable;->game_card_action_bg:I

    sget v10, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_grey_background:I

    const/4 v11, 0x0

    sget v12, Lcom/youku/gamecenter/R$drawable;->game_action_bg_tudou:I

    sget v13, Lcom/youku/gamecenter/R$drawable;->game_action_bg_gray:I

    sget v14, Lcom/youku/gamecenter/R$color;->box_button_text_color_at_blue_background:I

    sget v15, Lcom/youku/gamecenter/R$drawable;->game_action_bg_gray:I

    invoke-direct/range {v0 .. v15}, Lcom/youku/gamecenter/data/GameInfoStatus;-><init>(Ljava/lang/String;IIIIIIIIIIIIII)V

    sput-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/youku/gamecenter/data/GameInfoStatus;

    const/4 v1, 0x0

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->$VALUES:[Lcom/youku/gamecenter/data/GameInfoStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIIIIII)V
    .locals 0
    .param p3, "homePageTitleId"    # I
    .param p4, "detailPageResId"    # I
    .param p5, "detailPageTitleId"    # I
    .param p6, "detailPageDownloadProgressBarColorId"    # I
    .param p7, "homeFragmentButtonResId"    # I
    .param p8, "homeFragmnetButtonTextColorId"    # I
    .param p9, "actionButtonBg"    # I
    .param p10, "downloadBtnTitleColorId"    # I
    .param p11, "downloadBtnProgressVisible"    # I
    .param p12, "downloadBtnProgressColorId"    # I
    .param p13, "downloadBtnBgColorId"    # I
    .param p14, "detailPageBottomBtnTxtColorId"    # I
    .param p15, "detailPageBottomBtnBgId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIIIIIII)V"
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput p3, p0, Lcom/youku/gamecenter/data/GameInfoStatus;->homePageTitleId:I

    .line 164
    iput p4, p0, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageResId:I

    .line 165
    iput p5, p0, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageTitleId:I

    .line 166
    iput p6, p0, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageDownloadProgressBarColorId:I

    .line 167
    iput p7, p0, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmentButtonResId:I

    .line 168
    iput p8, p0, Lcom/youku/gamecenter/data/GameInfoStatus;->homeFragmnetButtonTextColorId:I

    .line 169
    iput p9, p0, Lcom/youku/gamecenter/data/GameInfoStatus;->actionButtonBg:I

    .line 170
    iput p10, p0, Lcom/youku/gamecenter/data/GameInfoStatus;->downloadBtnTitleColorId:I

    .line 171
    iput p11, p0, Lcom/youku/gamecenter/data/GameInfoStatus;->downloadBtnProgressVisible:I

    .line 172
    iput p12, p0, Lcom/youku/gamecenter/data/GameInfoStatus;->downloadBtnProgressColorId:I

    .line 173
    iput p13, p0, Lcom/youku/gamecenter/data/GameInfoStatus;->downloadBtnBgColorId:I

    .line 174
    iput p14, p0, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageBottomBtnTxtColorId:I

    .line 175
    iput p15, p0, Lcom/youku/gamecenter/data/GameInfoStatus;->detailPageBottomBtnBgId:I

    .line 176
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfoStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfoStatus;

    return-object v0
.end method

.method public static values()[Lcom/youku/gamecenter/data/GameInfoStatus;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->$VALUES:[Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-virtual {v0}, [Lcom/youku/gamecenter/data/GameInfoStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/gamecenter/data/GameInfoStatus;

    return-object v0
.end method
