.class public Lcom/corncop/pegasus/WaitingProgressDialog;
.super Ljava/lang/Object;
.source "WaitingProgressDialog.java"


# static fields
.field private static loadingDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .locals 2

    .prologue
    .line 53
    sget-object v1, Lcom/corncop/pegasus/WaitingProgressDialog;->loadingDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 55
    :try_start_0
    sget-object v1, Lcom/corncop/pegasus/WaitingProgressDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 57
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static creatDialog(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isCancel"    # Z
    .param p3, "isRight"    # Z

    .prologue
    const/16 v11, 0x19

    const/16 v10, 0xa

    const/16 v8, 0x23

    const/4 v6, -0x2

    const/4 v9, 0x0

    .line 62
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v4, "wrap_content":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v5, "wrap_content0":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    .local v1, "main":Landroid/widget/LinearLayout;
    const v6, -0xbbbbbc

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 68
    if-eqz p3, :cond_1

    .line 69
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    invoke-virtual {v4, v10, v9, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 71
    invoke-virtual {v5, v8, v11, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 79
    :goto_0
    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 81
    new-instance v2, Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    const v7, 0x1010077

    invoke-direct {v2, p0, v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    .local v2, "pb":Landroid/widget/ProgressBar;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 84
    .local v3, "tipTextView":Landroid/widget/TextView;
    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    const-string/jumbo v6, "\u8bf7\u7a0d\u5019..."

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 92
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    new-instance v6, Landroid/app/Dialog;

    sget v7, Lcom/toolsbox/athena/R$style;->loading_dialog:I

    invoke-direct {v6, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v6, Lcom/corncop/pegasus/WaitingProgressDialog;->loadingDialog:Landroid/app/Dialog;

    .line 94
    sget-object v6, Lcom/corncop/pegasus/WaitingProgressDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v6, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 95
    sget-object v6, Lcom/corncop/pegasus/WaitingProgressDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v0, "fill_parent":Landroid/widget/LinearLayout$LayoutParams;
    sget-object v6, Lcom/corncop/pegasus/WaitingProgressDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v6, v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    sget-object v6, Lcom/corncop/pegasus/WaitingProgressDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 103
    return-void

    .line 74
    .end local v0    # "fill_parent":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "pb":Landroid/widget/ProgressBar;
    .end local v3    # "tipTextView":Landroid/widget/TextView;
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 75
    const/4 v6, 0x5

    const/16 v7, 0xf

    invoke-virtual {v4, v10, v6, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 76
    invoke-virtual {v5, v8, v11, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private static creatDialog_Toast_Style(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isCancel"    # Z
    .param p3, "isRight"    # Z

    .prologue
    const/4 v7, 0x0

    .line 115
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const-string v5, "layout"

    const-string v6, "loading_layout"

    invoke-static {p0, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, "layout":Landroid/view/View;
    const-string v4, "id"

    const-string/jumbo v5, "textView_id"

    invoke-static {p0, v4, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 118
    .local v3, "tipTextView":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_0
    new-instance v4, Landroid/app/Dialog;

    const-string/jumbo v5, "style"

    const-string v6, "loading_dialog"

    invoke-static {p0, v5, v6}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v4, Lcom/corncop/pegasus/WaitingProgressDialog;->loadingDialog:Landroid/app/Dialog;

    .line 122
    sget-object v4, Lcom/corncop/pegasus/WaitingProgressDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v4, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 123
    sget-object v4, Lcom/corncop/pegasus/WaitingProgressDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 124
    sget-object v4, Lcom/corncop/pegasus/WaitingProgressDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 125
    sget-object v4, Lcom/corncop/pegasus/WaitingProgressDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 126
    .local v0, "dialogWindow":Landroid/view/Window;
    const/16 v4, 0x51

    invoke-virtual {v0, v4}, Landroid/view/Window;->setGravity(I)V

    .line 129
    sget-object v4, Lcom/corncop/pegasus/WaitingProgressDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 130
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 131
    const/16 v4, 0xa0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 134
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 135
    sget-object v4, Lcom/corncop/pegasus/WaitingProgressDialog;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 136
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isCancel"    # Z
    .param p3, "isRight"    # Z

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/corncop/pegasus/WaitingProgressDialog;->creatDialog_Toast_Style(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 50
    return-void
.end method

.method public static show(Landroid/content/Context;ZZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isCancel"    # Z
    .param p2, "isRight"    # Z

    .prologue
    .line 33
    const-string v0, ""

    invoke-static {p0, v0, p1, p2}, Lcom/corncop/pegasus/WaitingProgressDialog;->creatDialog(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 35
    return-void
.end method
