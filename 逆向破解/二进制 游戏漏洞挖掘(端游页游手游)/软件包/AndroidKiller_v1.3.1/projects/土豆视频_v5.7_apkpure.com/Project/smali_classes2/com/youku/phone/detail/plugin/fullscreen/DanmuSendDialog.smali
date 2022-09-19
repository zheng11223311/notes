.class public Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;
.super Ljava/lang/Object;
.source "DanmuSendDialog.java"


# static fields
.field public static final BIGSIZE:I = 0x1e

.field public static final BOTTOM:I = 0x4

.field public static final DATA:I = 0x7d0

.field private static final DEFAULT_TEXT_COLOR:Ljava/lang/String; = "bili.default.textcolor"

.field private static final DEFAULT_TEXT_POS:Ljava/lang/String; = "bili.default.text.pos"

.field public static final MIDSIZE:I = 0x18

.field public static final SCROLL:I = 0x1

.field public static final SCROLL_MAX:I = 0x28

.field public static final SENDCOMMENT:I = 0x7d1

.field public static final SMALLSIZE:I = 0x12

.field public static final STATIC_MAX:I = 0x14

.field public static final TOP:I = 0x5


# instance fields
.field private btn_send:Landroid/view/View;

.field cancel_icon:Landroid/view/View;

.field colorRadioGroup:Lcom/youku/widget/RadioGroup;

.field private commentid:Ljava/lang/String;

.field private contentView:Lcom/tudou/detail/CommentDialogRelativeLayout;

.field context:Landroid/content/Context;

.field danmu_set_latout:Landroid/view/View;

.field danmu_setting:Landroid/view/View;

.field dialog:Landroid/app/Dialog;

.field private edit:Landroid/widget/EditText;

.field frame:Landroid/graphics/Rect;

.field fullplugin:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

.field handler:Landroid/os/Handler;

.field private height:I

.field inflater:Landroid/view/LayoutInflater;

.field isSoftVisible:Z

.field private isfist:Z

.field private isshow:Z

.field land_blank:I

.field ondisslistener:Landroid/widget/PopupWindow$OnDismissListener;

.field private other:Landroid/view/View;

.field port_blank:I

.field posRadioGroup:Landroid/widget/RadioGroup;

.field private replayname:Ljava/lang/String;

.field sizeRadioGroup:Landroid/widget/RadioGroup;

.field text_lenght:Landroid/widget/TextView;

.field videoid:Ljava/lang/String;

.field private width:I

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Landroid/widget/PopupWindow$OnDismissListener;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "ondissmisslistener"    # Landroid/widget/PopupWindow$OnDismissListener;
    .param p5, "fullplugin"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->frame:Landroid/graphics/Rect;

    .line 55
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->isSoftVisible:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->isfist:Z

    .line 58
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->isshow:Z

    .line 92
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->context:Landroid/content/Context;

    .line 93
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->handler:Landroid/os/Handler;

    .line 94
    iput-object p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->ondisslistener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 95
    iput-object p5, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->fullplugin:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .line 96
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->inflater:Landroid/view/LayoutInflater;

    .line 97
    if-eqz p2, :cond_0

    .line 98
    const-string v0, "video_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->videoid:Ljava/lang/String;

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->initDialog()V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->edit:Landroid/widget/EditText;

    return-object v0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 459
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->contentView:Lcom/tudou/detail/CommentDialogRelativeLayout;

    invoke-virtual {v1}, Lcom/tudou/detail/CommentDialogRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 461
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 463
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 190
    const v3, 0x7f0c04e1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->edit:Landroid/widget/EditText;

    .line 191
    const v3, 0x7f0c04df

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->btn_send:Landroid/view/View;

    .line 192
    const v3, 0x7f0c0c19

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->other:Landroid/view/View;

    .line 193
    const v3, 0x7f0c04e0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->text_lenght:Landroid/widget/TextView;

    .line 194
    const v3, 0x7f0c0b1f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->danmu_setting:Landroid/view/View;

    .line 195
    const v3, 0x7f0c0b20

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->cancel_icon:Landroid/view/View;

    .line 196
    const v3, 0x7f0c0b21

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->danmu_set_latout:Landroid/view/View;

    .line 197
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->other:Landroid/view/View;

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$3;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->cancel_icon:Landroid/view/View;

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$4;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$4;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->danmu_setting:Landroid/view/View;

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$5;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$5;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->btn_send:Landroid/view/View;

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$6;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const v3, 0x7f0c0b22

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/widget/RadioGroup;

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->colorRadioGroup:Lcom/youku/widget/RadioGroup;

    .line 251
    const v3, 0x7f0c0b23

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->sizeRadioGroup:Landroid/widget/RadioGroup;

    .line 253
    const v3, 0x7f0c0b27

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->posRadioGroup:Landroid/widget/RadioGroup;

    .line 255
    const-string v3, "bili.default.textcolor"

    invoke-static {v3, v5}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, "colorid":I
    const-string v3, "bili.default.text.pos"

    invoke-static {v3, v5}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v2

    .line 259
    .local v2, "posid":I
    if-ne v0, v5, :cond_0

    .line 260
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->colorRadioGroup:Lcom/youku/widget/RadioGroup;

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Lcom/youku/widget/RadioGroup;->check(I)V

    .line 266
    :goto_0
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->edit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->getColorCheck()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 267
    if-ne v2, v5, :cond_1

    .line 268
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->posRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0c000a

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 273
    :goto_1
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->sizeRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0c0b25

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 274
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->getPosCheck()I

    move-result v3

    if-ne v3, v6, :cond_2

    const/16 v1, 0x28

    .line 275
    .local v1, "maxSize":I
    :goto_2
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->text_lenght:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->edit:Landroid/widget/EditText;

    new-array v4, v6, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 277
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->edit:Landroid/widget/EditText;

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$7;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$7;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 303
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->colorRadioGroup:Lcom/youku/widget/RadioGroup;

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$8;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$8;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)V

    invoke-virtual {v3, v4}, Lcom/youku/widget/RadioGroup;->setOnCheckedChangeListener(Lcom/youku/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 312
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->posRadioGroup:Landroid/widget/RadioGroup;

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$9;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$9;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 328
    return-void

    .line 263
    .end local v1    # "maxSize":I
    :cond_0
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->colorRadioGroup:Lcom/youku/widget/RadioGroup;

    invoke-virtual {v3, v0}, Lcom/youku/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->posRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 274
    :cond_2
    const/16 v1, 0x14

    goto :goto_2
.end method

.method private openSoftInput()V
    .locals 3

    .prologue
    .line 450
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 452
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 456
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 466
    const-string v0, "yueliang"

    const-string v1, "dismiss"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 467
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->hideSoftInput()V

    .line 468
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 469
    return-void
.end method

.method public getColorCheck()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->colorRadioGroup:Lcom/youku/widget/RadioGroup;

    invoke-virtual {v0}, Lcom/youku/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 399
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 375
    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 377
    :pswitch_1
    const/high16 v0, -0x10000

    goto :goto_0

    .line 380
    :pswitch_2
    const/16 v0, -0x6700

    goto :goto_0

    .line 383
    :pswitch_3
    const/16 v0, -0xf00

    goto :goto_0

    .line 386
    :pswitch_4
    const v0, -0x79ff01

    goto :goto_0

    .line 389
    :pswitch_5
    const v0, -0xff7312

    goto :goto_0

    .line 392
    :pswitch_6
    const v0, -0xff0301

    goto :goto_0

    .line 395
    :pswitch_7
    const v0, -0xff00ee

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x7f0c0001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getColorCheckStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->colorRadioGroup:Lcom/youku/widget/RadioGroup;

    invoke-virtual {v0}, Lcom/youku/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 429
    const-string v0, ""

    :goto_0
    return-object v0

    .line 405
    :pswitch_0
    const-string v0, "\u767d"

    goto :goto_0

    .line 407
    :pswitch_1
    const-string v0, "\u7ea2"

    goto :goto_0

    .line 410
    :pswitch_2
    const-string v0, "\u6a58"

    goto :goto_0

    .line 413
    :pswitch_3
    const-string v0, "\u9ec4"

    goto :goto_0

    .line 416
    :pswitch_4
    const-string v0, "\u7d2b"

    goto :goto_0

    .line 419
    :pswitch_5
    const-string v0, "\u84dd"

    goto :goto_0

    .line 422
    :pswitch_6
    const-string v0, "\u9752"

    goto :goto_0

    .line 425
    :pswitch_7
    const-string v0, "\u7eff"

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x7f0c0001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getPosCheck()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->posRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 355
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 347
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 349
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 351
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0009
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPosCheckStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->posRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 369
    const-string v0, ""

    :goto_0
    return-object v0

    .line 361
    :pswitch_0
    const-string v0, "\u5e95\u90e8"

    goto :goto_0

    .line 363
    :pswitch_1
    const-string v0, "\u6eda\u52a8"

    goto :goto_0

    .line 365
    :pswitch_2
    const-string v0, "\u9876\u90e8"

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0009
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSizeCheck()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->sizeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 341
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 333
    :pswitch_0
    const/16 v0, 0x1e

    goto :goto_0

    .line 335
    :pswitch_1
    const/16 v0, 0x18

    goto :goto_0

    .line 337
    :pswitch_2
    const/16 v0, 0x12

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x7f0c0b24
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initDialog()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 135
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->context:Landroid/content/Context;

    const v2, 0x7f0e0009

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dialog:Landroid/app/Dialog;

    .line 137
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 140
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f03026c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 141
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 143
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0c0c17

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/CommentDialogRelativeLayout;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->contentView:Lcom/tudou/detail/CommentDialogRelativeLayout;

    .line 145
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->contentView:Lcom/tudou/detail/CommentDialogRelativeLayout;

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->initView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->contentView:Lcom/tudou/detail/CommentDialogRelativeLayout;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)V

    invoke-virtual {v0, v1}, Lcom/tudou/detail/CommentDialogRelativeLayout;->setLayoutListener(Lcom/tudou/detail/CommentDialogRelativeLayout$LayoutChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$2;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 187
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const/4 v0, 0x1

    .line 477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->commentid:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setReplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->replayname:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 440
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 441
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->openSoftInput()V

    .line 442
    const-string v0, "danmu_setting"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->danmu_set_latout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->danmu_set_latout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
