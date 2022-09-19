.class public Lcom/alipay/android/mini/util/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:F = 0.875f

.field public static final d:F = 0.4375f

.field public static e:I = 0x0

.field public static f:I = 0x0

.field static final g:Ljava/lang/String; = " "

.field private static final h:Ljava/util/HashMap;

.field private static final i:Ljava/util/HashMap;

.field private static final j:F = 11.0f

.field private static final k:F = 12.0f

.field private static final l:F = 13.0f

.field private static final m:F = 15.0f

.field private static final n:F = 16.0f

.field private static final o:F = 19.0f

.field private static final p:F = 20.0f

.field private static final q:F = 1.5f

.field private static final r:Ljava/lang/String; = "^(\\d)\\1+$"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/mini/util/n;->h:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    .line 78
    sput v1, Lcom/alipay/android/mini/util/n;->e:I

    .line 79
    sput v1, Lcom/alipay/android/mini/util/n;->f:I

    .line 89
    sget-object v0, Lcom/alipay/android/mini/util/n;->h:Ljava/util/HashMap;

    const-string/jumbo v1, "xx-small"

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/alipay/android/mini/util/n;->h:Ljava/util/HashMap;

    const-string/jumbo v1, "x-small"

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/alipay/android/mini/util/n;->h:Ljava/util/HashMap;

    const-string/jumbo v1, "small"

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/alipay/android/mini/util/n;->h:Ljava/util/HashMap;

    const-string v1, "medium"

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/alipay/android/mini/util/n;->h:Ljava/util/HashMap;

    const-string v1, "large"

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/alipay/android/mini/util/n;->h:Ljava/util/HashMap;

    const-string/jumbo v1, "x-large"

    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/alipay/android/mini/util/n;->h:Ljava/util/HashMap;

    const-string/jumbo v1, "xx-large"

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "switch"

    const-string v2, "mini_switch_selector"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "skip"

    const-string v2, "mini_switch_selector"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "white_content"

    const-string v2, "mini_bg_white"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "gray_content"

    const-string v2, "mini_bg_gray"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "detail"

    const-string v2, "mini_info_icon"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "tip"

    const-string v2, "mini_info_icon"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "header_line"

    const-string v2, "mini_header_line"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "title"

    const-string v2, "mini_logo"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "footer_line"

    const-string v2, "mini_footer_line"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "middle_line"

    const-string v2, "mini_footer_line"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "sure"

    const-string v2, "mini_icon_sure"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "page_title"

    const-string v2, "mini_card_title_bg"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "dash_line"

    const-string v2, "mini_dash_line_bg"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "result_ok"

    const-string v2, "mini_icon_ok"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "normal"

    const-string v2, "mini_btn_confirm_bg"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "hover"

    const-string v2, "mini_btn_confirm_hover"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "normal_second"

    const-string v2, "mini_btn_cancel_bg"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "hover_second"

    const-string v2, "mini_btn_cancel_hover"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "disable_second"

    const-string v2, "mini_btn_disable"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "disable_gray"

    const-string v2, "mini_btn_disable"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "disable_blue"

    const-string v2, "mini_btn_confirm_bg"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "sms_normal"

    const-string v2, "mini_btn_normal"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "sms_hover"

    const-string v2, "mini_btn_push"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "sms_disable"

    const-string v2, "mini_smsbtn_disable"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "disable"

    const-string v2, "mini_btn_disable"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "login_disable"

    const-string v2, "mini_btn_confirm_bg"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "finger_print_info"

    const-string v2, "mini_btn_confirm_bg"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "goto"

    const-string v2, "mini_arrow"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "error"

    const-string v2, "msp_info"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "back"

    const-string v2, "mini_back"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "mini_fullscreen_switch"

    const-string v2, "mini_fullscreen_switch_selector"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "hui"

    const-string v2, "mini_channel_hui"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "gou"

    const-string v2, "mini_channel_gou"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "red_dot"

    const-string v2, "mini_red_dot"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "info"

    const-string v2, "mini_info_icon"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "icon_camera"

    const-string v2, "mini_icon_camera"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "inputGroup"

    const-string v2, "mini_input_bg"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string v1, "help"

    const-string v2, "mini_help_icon"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    const-string/jumbo v1, "three_point"

    const-string v2, "mini_three_point"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()F
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/alipay/android/mini/util/n;->h:Ljava/util/HashMap;

    const-string v1, "medium"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 872
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 873
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 874
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 1

    .prologue
    .line 271
    if-eqz p0, :cond_0

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 276
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 277
    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0

    .line 274
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 146
    invoke-static {p0}, Lj/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "msp_text_color_gray"

    invoke-static {v1}, Lj/i;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 151
    :cond_0
    const-string/jumbo v0, "rgb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->p(Ljava/lang/String;)[I

    move-result-object v0

    .line 153
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 1

    .prologue
    .line 458
    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->d(Landroid/app/Activity;)I

    move-result v0

    .line 459
    invoke-static {p0, p1, v0}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;I)I
    .locals 2

    .prologue
    const/4 v0, -0x2

    .line 435
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 439
    :cond_1
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    int-to-float v0, p2

    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->j(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 443
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 446
    :goto_1
    if-lez v1, :cond_3

    .line 447
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->c(Landroid/app/Activity;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_1

    .line 449
    :cond_3
    if-eqz v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;[I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 464
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v0

    .line 468
    :cond_1
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 469
    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->e(Landroid/app/Activity;)I

    move-result v1

    aget v0, p2, v0

    const/4 v2, 0x1

    aget v2, p2, v2

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 471
    int-to-float v0, v0

    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->j(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 473
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 474
    if-lez v0, :cond_3

    .line 475
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->c(Landroid/app/Activity;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 477
    :cond_3
    if-nez v0, :cond_0

    .line 478
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static a(IILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1036
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 1037
    const-string v0, "mini_margin_6"

    invoke-static {v0}, Lj/i;->d(Ljava/lang/String;)I

    move-result p0

    .line 1039
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1040
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1041
    const/16 v2, 0xf0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 1042
    invoke-static {p2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1043
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1045
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1046
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1047
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1048
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1050
    return-object v1
.end method

.method public static a(Landroid/content/Context;FI)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 735
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 736
    if-nez v0, :cond_0

    .line 737
    const/4 v0, 0x0

    .line 755
    :goto_0
    return-object v0

    .line 739
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 740
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float p1, v2

    .line 743
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 744
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 745
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 755
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 842
    const/4 v0, 0x0

    .line 843
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 844
    const-string v1, "local"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->h(Ljava/lang/String;)I

    move-result v0

    .line 846
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 855
    :cond_0
    :goto_0
    return-object v0

    .line 850
    :cond_1
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 852
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 760
    .line 761
    if-eqz p1, :cond_6

    array-length v0, p1

    if-lez v0, :cond_6

    .line 763
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 764
    array-length v6, p1

    move v4, v1

    move v0, v5

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v7, p1, v4

    .line 765
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 764
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 769
    :cond_0
    const-string v0, "normal"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p0, v7}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v0, v1

    goto :goto_1

    .line 775
    :cond_1
    const-string v0, "hover"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    new-array v0, v9, [I

    fill-array-data v0, :array_1

    invoke-static {p0, v7}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 780
    new-array v0, v9, [I

    fill-array-data v0, :array_2

    invoke-static {p0, v7}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v0, v1

    goto :goto_1

    .line 784
    :cond_2
    const-string v0, "disable"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 785
    new-array v0, v5, [I

    const v8, -0x101009e

    aput v8, v0, v1

    invoke-static {p0, v7}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    move v0, v1

    goto :goto_1

    .line 790
    :cond_4
    if-eqz v0, :cond_5

    move-object v0, v2

    .line 792
    :goto_2
    return-object v0

    :cond_5
    move-object v0, v3

    .line 790
    goto :goto_2

    :cond_6
    move-object v0, v2

    .line 792
    goto :goto_2

    .line 770
    nop

    :array_0
    .array-data 4
        0x101009e
        -0x10100a7
        -0x101009c
    .end array-data

    .line 776
    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    .line 780
    :array_2
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 699
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 700
    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 703
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 704
    const-string v0, "mini_layout"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_1

    .line 706
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 708
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 709
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/mini/window/sdk/j;Z)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 683
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 684
    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/alipay/android/mini/util/n;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    .line 687
    :cond_0
    if-nez p3, :cond_1

    .line 688
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/alipay/android/mini/util/n;->a(Landroid/app/Activity;I)V

    .line 690
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "\u786e\u5b9a\u9000\u51fa\u652f\u4ed8\uff1f"

    .line 691
    :goto_0
    const-string v0, "msp_error_title_default"

    invoke-static {v0}, Lj/i;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 693
    const-string/jumbo v3, "\u662f"

    new-array v4, v6, [Lr/a;

    sget-object v0, Lr/a;->d:Lr/a;

    aput-object v0, v4, v7

    const-string/jumbo v5, "\u5426"

    new-array v6, v6, [Lr/a;

    sget-object v0, Lr/a;->B:Lr/a;

    aput-object v0, v6, v7

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/mini/window/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lr/a;Ljava/lang/String;[Lr/a;)V

    .line 696
    return-void

    :cond_2
    move-object v2, p1

    .line 690
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 536
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "mini_safty_dialog"

    invoke-static {v1}, Lj/i;->h(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 538
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "mini_safty_code_info_layout"

    invoke-static {v2}, Lj/i;->f(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 540
    const-string v2, "mini_safty_code_close"

    invoke-static {v2}, Lj/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 542
    new-instance v3, Lcom/alipay/android/mini/util/p;

    invoke-direct {v3, v0}, Lcom/alipay/android/mini/util/p;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 549
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 550
    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;[Ljava/lang/String;[Ljava/lang/String;Lcom/alipay/android/mini/window/sdk/k;)V
    .locals 2

    .prologue
    .line 596
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 597
    const-string v0, "msp_mini_choose_identitify"

    invoke-static {v0}, Lj/i;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 599
    if-nez p1, :cond_0

    .line 600
    const-string v0, "msp_mini_read_protocal_title"

    invoke-static {v0}, Lj/i;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 602
    new-instance p2, Lcom/alipay/android/mini/util/s;

    invoke-direct {p2, p3, p0, p4}, Lcom/alipay/android/mini/util/s;-><init>([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;)V

    .line 616
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 617
    invoke-virtual {v1, p4, p2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 618
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 619
    return-void
.end method

.method public static a(Landroid/content/Context;[Lcom/alipay/android/mini/uielement/f;[Ljava/lang/String;Lcom/alipay/android/mini/window/sdk/k;)V
    .locals 2

    .prologue
    .line 555
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 556
    new-instance v1, Lcom/alipay/android/mini/util/q;

    invoke-direct {v1, p3, p1}, Lcom/alipay/android/mini/util/q;-><init>(Lcom/alipay/android/mini/window/sdk/k;[Lcom/alipay/android/mini/uielement/f;)V

    .line 562
    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 563
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 564
    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;)V
    .locals 1

    .prologue
    .line 861
    invoke-static {p0, p1}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 862
    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {p3, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 865
    :cond_0
    invoke-static {p0, p2}, Lcom/alipay/android/mini/util/n;->b(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 866
    if-eqz v0, :cond_1

    .line 867
    invoke-virtual {p3, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 869
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/mini/window/sdk/k;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 570
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 571
    const-string v0, "msp_mini_choose_identitify"

    invoke-static {v0}, Lj/i;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 573
    new-instance v0, Lcom/alipay/android/mini/util/r;

    move-object v1, p6

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/mini/util/r;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/alipay/android/mini/window/sdk/k;)V

    .line 588
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 589
    invoke-virtual {v7, p2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 590
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 591
    return-void
.end method

.method public static a(Landroid/os/IBinder;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 649
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 651
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 652
    return-void
.end method

.method public static a(Landroid/widget/EditText;)V
    .locals 4

    .prologue
    .line 623
    if-eqz p0, :cond_0

    .line 624
    new-instance v0, Lcom/alipay/android/mini/util/t;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/util/t;-><init>(Landroid/widget/EditText;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 646
    :cond_0
    return-void
.end method

.method public static a(Landroid/widget/TextView;FFFI)V
    .locals 0

    .prologue
    .line 531
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 533
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 294
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 297
    :cond_0
    new-instance v0, Lcom/alipay/android/mini/util/o;

    invoke-direct {v0, p1, p0}, Lcom/alipay/android/mini/util/o;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Lk/a;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lk/a;)V
    .locals 2

    .prologue
    .line 411
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    .line 415
    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 416
    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->h(Ljava/lang/String;)I

    move-result v0

    .line 417
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p1, v0}, Lk/a;->a(I)V

    goto :goto_0

    .line 426
    :cond_2
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 427
    :cond_3
    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    goto :goto_0

    .line 429
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/a;->onBitmapFailed(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 986
    .line 987
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 988
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 989
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v1, v0

    .line 990
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_1

    .line 991
    if-eqz p1, :cond_0

    .line 992
    add-int/lit8 v4, v1, 0x1

    aget-char v5, v3, v4

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 990
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 994
    :cond_0
    add-int/lit8 v4, v1, 0x1

    aget-char v5, v3, v4

    add-int/lit8 v6, v1, 0x1

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v4

    goto :goto_1

    .line 998
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    .line 999
    const-string v2, "^(\\d)\\1+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1000
    const/4 v0, 0x1

    .line 1003
    :cond_2
    return v0
.end method

.method public static b(Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 878
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 879
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 880
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 171
    const-string v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const/16 v0, 0x11

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    const-string v1, "left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    const-string/jumbo v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 1

    .prologue
    .line 486
    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->e(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/alipay/android/mini/util/n;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Landroid/app/Activity;I)I
    .locals 2

    .prologue
    .line 491
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    const/4 v0, 0x0

    .line 511
    :cond_0
    :goto_0
    return v0

    .line 495
    :cond_1
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    int-to-float v0, p2

    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->j(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 498
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 499
    if-lez v0, :cond_3

    .line 500
    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->c(Landroid/app/Activity;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 506
    :cond_3
    if-nez v0, :cond_0

    .line 507
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static b()Landroid/content/res/ColorStateList;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 1021
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 1022
    new-array v1, v3, [I

    .line 1023
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v4

    .line 1025
    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4

    .line 1026
    const-string v2, "#59ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v5

    .line 1027
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v5

    .line 1030
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1031
    return-object v2

    .line 1023
    :array_0
    .array-data 4
        0x101009e
        -0x10100a7
        -0x101009c
    .end array-data

    .line 1027
    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public static varargs b(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    const/4 v3, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 797
    .line 798
    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    .line 800
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 801
    new-array v5, v3, [I

    move v1, v2

    move v3, v4

    .line 802
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_2

    .line 803
    aget-object v6, p1, v1

    .line 804
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 802
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 808
    :cond_0
    const-string/jumbo v3, "rgb"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 809
    packed-switch v1, :pswitch_data_0

    :cond_1
    move v3, v2

    goto :goto_1

    .line 811
    :pswitch_0
    new-array v3, v9, [I

    fill-array-data v3, :array_0

    aput-object v3, v0, v2

    .line 814
    invoke-static {v6}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v2

    move v3, v2

    .line 815
    goto :goto_1

    .line 817
    :pswitch_1
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    aput-object v3, v0, v4

    .line 819
    invoke-static {v6}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v4

    .line 820
    new-array v3, v8, [I

    fill-array-data v3, :array_2

    aput-object v3, v0, v8

    .line 822
    invoke-static {v6}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v8

    move v3, v2

    .line 823
    goto :goto_1

    .line 825
    :pswitch_2
    new-array v3, v4, [I

    const v7, -0x101009e

    aput v7, v3, v2

    aput-object v3, v0, v9

    .line 826
    invoke-static {v6}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v9

    move v3, v2

    .line 827
    goto :goto_1

    .line 833
    :cond_2
    if-nez v3, :cond_3

    .line 834
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v1

    .line 838
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 809
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 811
    :array_0
    .array-data 4
        0x101009e
        -0x10100a7
        -0x101009c
    .end array-data

    .line 817
    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    .line 820
    :array_2
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public static b(Landroid/content/Context;F)Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 713
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 714
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    const-string v2, "mini_check_selected"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, p1, v2}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;FI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 719
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    const-string v2, "mini_checkbox_normal"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, p1, v2}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;FI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 725
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    const-string v2, "mini_checkbox_disable"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, p1, v2}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;FI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 729
    return-object v0

    .line 714
    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    .line 719
    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data
.end method

.method public static b(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 655
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/n;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    .line 656
    return-void
.end method

.method public static c(Landroid/app/Activity;)F
    .locals 2

    .prologue
    .line 884
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 885
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 886
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static c(Ljava/lang/String;)F
    .locals 2

    .prologue
    .line 185
    .line 186
    sget-object v0, Lcom/alipay/android/mini/util/n;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/alipay/android/mini/util/n;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 196
    :goto_0
    return v0

    .line 190
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-static {}, Lcom/alipay/android/mini/util/n;->a()F

    move-result v0

    goto :goto_0
.end method

.method public static c(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 669
    new-instance v0, Lcom/alipay/android/mini/util/u;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/util/u;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 679
    return-void
.end method

.method public static d(Landroid/app/Activity;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 890
    sget v0, Lcom/alipay/android/mini/util/n;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 891
    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->b(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    .line 892
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mini_win_default_height"

    invoke-static {v2}, Lj/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/alipay/android/mini/util/n;->f:I

    .line 894
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 895
    sub-float v2, v1, v4

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 896
    sget v2, Lcom/alipay/android/mini/util/n;->f:I

    int-to-float v2, v2

    sub-float/2addr v1, v4

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/alipay/android/mini/util/n;->f:I

    .line 897
    sget v1, Lcom/alipay/android/mini/util/n;->f:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    .line 898
    float-to-int v0, v0

    sput v0, Lcom/alipay/android/mini/util/n;->f:I

    .line 902
    :cond_0
    sget v0, Lcom/alipay/android/mini/util/n;->f:I

    return v0
.end method

.method public static d(Ljava/lang/String;)[I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x3fc00000    # 1.5f

    .line 204
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-object v0

    .line 209
    :cond_1
    :try_start_0
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v2

    invoke-virtual {v2}, Lh/b;->b()Landroid/content/Context;

    move-result-object v2

    .line 210
    invoke-static {p0}, Lj/k;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 212
    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-int v3, v3

    .line 213
    int-to-float v3, v3

    invoke-static {v2, v3}, Lj/l;->a(Landroid/content/Context;F)I

    move-result v2

    .line 214
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 215
    aput v2, v0, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_2
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 219
    if-eqz v3, :cond_0

    .line 220
    array-length v4, v3

    array-length v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 221
    :goto_2
    if-ge v1, v4, :cond_0

    .line 222
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 223
    int-to-float v5, v5

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 224
    int-to-float v5, v5

    invoke-static {v2, v5}, Lj/l;->a(Landroid/content/Context;F)I

    move-result v5

    .line 225
    aput v5, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 229
    :catch_0
    move-exception v1

    .line 230
    invoke-static {v1}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static e(Landroid/app/Activity;)I
    .locals 7

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 906
    sget v0, Lcom/alipay/android/mini/util/n;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 907
    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->a(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    .line 908
    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->b(Landroid/app/Activity;)I

    move-result v1

    int-to-float v1, v1

    .line 909
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    .line 914
    :goto_0
    div-float v0, v1, v0

    const v2, 0x3f19999a    # 0.6f

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1

    .line 915
    const/high16 v0, 0x3f600000    # 0.875f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/alipay/android/mini/util/n;->e:I

    .line 922
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 924
    sub-float v2, v0, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 925
    sget v2, Lcom/alipay/android/mini/util/n;->e:I

    int-to-float v2, v2

    sub-float/2addr v0, v5

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v0, v3

    add-float/2addr v0, v5

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/alipay/android/mini/util/n;->e:I

    .line 926
    sget v0, Lcom/alipay/android/mini/util/n;->e:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 927
    float-to-int v0, v1

    sput v0, Lcom/alipay/android/mini/util/n;->e:I

    .line 932
    :cond_0
    sget v0, Lcom/alipay/android/mini/util/n;->e:I

    return v0

    .line 918
    :cond_1
    const/high16 v0, 0x43f00000    # 480.0f

    sub-float v0, v1, v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    const/high16 v2, 0x438f0000    # 286.0f

    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->c(Landroid/app/Activity;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/alipay/android/mini/util/n;->e:I

    goto :goto_1

    :cond_2
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)[I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x3fc00000    # 1.5f

    .line 237
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 238
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-object v0

    .line 242
    :cond_1
    :try_start_0
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v2

    invoke-virtual {v2}, Lh/b;->b()Landroid/content/Context;

    move-result-object v2

    .line 243
    invoke-static {p0}, Lj/k;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 245
    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-int v3, v3

    .line 246
    int-to-float v3, v3

    invoke-static {v2, v3}, Lj/l;->a(Landroid/content/Context;F)I

    move-result v2

    .line 247
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 248
    aput v2, v0, v1

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 251
    :cond_2
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 252
    if-eqz v3, :cond_0

    .line 253
    array-length v4, v3

    array-length v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 254
    :goto_2
    if-ge v1, v4, :cond_0

    .line 255
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 256
    int-to-float v5, v5

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 257
    int-to-float v5, v5

    invoke-static {v2, v5}, Lcom/alipay/android/mini/util/n;->a(Landroid/content/Context;F)I

    move-result v5

    .line 258
    aput v5, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 262
    :catch_0
    move-exception v1

    .line 263
    invoke-static {v1}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static f(Landroid/app/Activity;)I
    .locals 4

    .prologue
    .line 1007
    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->e(Landroid/app/Activity;)I

    move-result v0

    .line 1008
    int-to-float v0, v0

    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->c(Landroid/app/Activity;)F

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 1009
    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->c(Landroid/app/Activity;)F

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1010
    div-int/lit8 v0, v0, 0x6

    sub-int/2addr v0, v1

    .line 1011
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mini_win_default_height"

    invoke-static {v2}, Lj/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1013
    add-int v2, v0, v1

    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->d(Landroid/app/Activity;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 1014
    add-int/2addr v0, v1

    sput v0, Lcom/alipay/android/mini/util/n;->f:I

    .line 1016
    :cond_0
    sget v0, Lcom/alipay/android/mini/util/n;->f:I

    return v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 281
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "local:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    invoke-static {p0}, Lj/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, ""

    .line 290
    :goto_0
    return-object v0

    .line 288
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 289
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-static {p0}, Lj/k;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    :goto_0
    return v0

    .line 335
    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 336
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 337
    sget-object v2, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    sget-object v0, Lcom/alipay/android/mini/util/n;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 341
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 348
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    :goto_0
    return-object v0

    .line 353
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/mini/util/n;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    move-object v0, p0

    .line 407
    goto :goto_0

    .line 355
    :cond_2
    const-string v2, "http://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    const-string v2, "base64,"

    .line 359
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 360
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 363
    :try_start_0
    invoke-static {v2}, Lcom/alipay/android/app/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 364
    if-eqz v3, :cond_5

    .line 365
    const/16 v2, 0x10

    new-array v4, v2, [C

    fill-array-data v4, :array_0

    .line 367
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 369
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 370
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 372
    const/16 v2, 0x20

    new-array v6, v2, [C

    move v2, v1

    .line 375
    :goto_2
    if-ge v1, v10, :cond_3

    .line 377
    aget-byte v7, v5, v1

    .line 378
    add-int/lit8 v8, v2, 0x1

    ushr-int/lit8 v9, v7, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v4, v9

    aput-char v9, v6, v2

    .line 379
    add-int/lit8 v2, v8, 0x1

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v4, v7

    aput-char v7, v6, v8

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 382
    :cond_3
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v1

    invoke-virtual {v1}, Lh/b;->b()Landroid/content/Context;

    move-result-object v1

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".img"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 386
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 388
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 390
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 391
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 392
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 394
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 401
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 402
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 397
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 398
    :goto_4
    :try_start_3
    invoke-static {v1}, Lj/h;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 401
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object p0, v0

    .line 403
    goto/16 :goto_1

    .line 402
    :catch_2
    move-exception v1

    move-object p0, v0

    .line 404
    goto/16 :goto_1

    .line 400
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 401
    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 403
    :goto_6
    throw v0

    .line 402
    :catch_3
    move-exception v1

    goto :goto_6

    .line 400
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 397
    :catch_4
    move-exception v1

    goto :goto_4

    :cond_5
    move-object v2, v0

    move-object p0, v0

    goto :goto_3

    .line 365
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static j(Ljava/lang/String;)F
    .locals 2

    .prologue
    .line 515
    const-string v0, "%"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    const/4 v0, 0x0

    .line 521
    :goto_0
    return v0

    .line 519
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 520
    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 521
    goto :goto_0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return-object v0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 943
    const/4 v0, 0x0

    .line 944
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 945
    const-string v1, "^(\\d)\\1+$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    const/4 v0, 0x1

    .line 949
    :cond_0
    return v0
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 969
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1054
    const-string v0, "^http(s)?://([a-zA-Z0-9_-]+.)*(alipay|taobao|alibaba|alibaba-inc).(com|net|cn|com.cn)/.*"

    .line 1055
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1056
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1057
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private static p(Ljava/lang/String;)[I
    .locals 4

    .prologue
    .line 160
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 161
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 164
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 165
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-object v1
.end method
