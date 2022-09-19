.class public Lcom/tudou/ui/fragment/DialogAddComment;
.super Ljava/lang/Object;
.source "DialogAddComment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/DialogAddComment$OnCommentImgClickListener;
    }
.end annotation


# static fields
.field public static final DATA:I = 0x7d0

.field public static final SENDCOMMENT:I = 0x7d1


# instance fields
.field private btn_send:Landroid/view/View;

.field private commentid:Ljava/lang/String;

.field private contentView:Lcom/tudou/detail/CommentDialogRelativeLayout;

.field context:Landroid/content/Context;

.field dialog:Landroid/app/Dialog;

.field private edit:Landroid/widget/EditText;

.field frame:Landroid/graphics/Rect;

.field handler:Landroid/os/Handler;

.field private height:I

.field imgPath:Ljava/lang/String;

.field inflater:Landroid/view/LayoutInflater;

.field isSoftVisible:Z

.field private isfist:Z

.field private isshow:Z

.field land_blank:I

.field mImg:Landroid/widget/ImageView;

.field public mOnCommentImgClickLis:Lcom/tudou/ui/fragment/DialogAddComment$OnCommentImgClickListener;

.field ondisslistener:Landroid/widget/PopupWindow$OnDismissListener;

.field private other:Landroid/view/View;

.field port_blank:I

.field private replayname:Ljava/lang/String;

.field text_lenght:Landroid/widget/TextView;

.field videoid:Ljava/lang/String;

.field private width:I

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Landroid/widget/PopupWindow$OnDismissListener;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "ondissmisslistener"    # Landroid/widget/PopupWindow$OnDismissListener;
    .param p5, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->frame:Landroid/graphics/Rect;

    .line 59
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->isSoftVisible:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->isfist:Z

    .line 62
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->isshow:Z

    .line 76
    iput-object p1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->context:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/tudou/ui/fragment/DialogAddComment;->handler:Landroid/os/Handler;

    .line 78
    iput-object p4, p0, Lcom/tudou/ui/fragment/DialogAddComment;->ondisslistener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 79
    iput p5, p0, Lcom/tudou/ui/fragment/DialogAddComment;->height:I

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->inflater:Landroid/view/LayoutInflater;

    .line 81
    if-eqz p2, :cond_0

    .line 82
    const-string v0, "videoid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->videoid:Ljava/lang/String;

    .line 83
    const-string v0, "imgPath"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->imgPath:Ljava/lang/String;

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/DialogAddComment;->initDialog()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/DialogAddComment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DialogAddComment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/tudou/ui/fragment/DialogAddComment;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/DialogAddComment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DialogAddComment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->edit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/DialogAddComment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DialogAddComment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->commentid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tudou/ui/fragment/DialogAddComment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DialogAddComment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->commentid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/tudou/ui/fragment/DialogAddComment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/DialogAddComment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->replayname:Ljava/lang/String;

    return-object p1
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 327
    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->contentView:Lcom/tudou/detail/CommentDialogRelativeLayout;

    invoke-virtual {v1}, Lcom/tudou/detail/CommentDialogRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 329
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 331
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    const v0, 0x7f0c04e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->edit:Landroid/widget/EditText;

    .line 219
    const v0, 0x7f0c04df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->btn_send:Landroid/view/View;

    .line 220
    const v0, 0x7f0c0c19

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->other:Landroid/view/View;

    .line 221
    const v0, 0x7f0c04e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->text_lenght:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f0c04dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->mImg:Landroid/widget/ImageView;

    .line 223
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->imgPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tudou/ui/fragment/DialogAddComment;->setImagePath(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->other:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/fragment/DialogAddComment$6;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/DialogAddComment$6;-><init>(Lcom/tudou/ui/fragment/DialogAddComment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->btn_send:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/fragment/DialogAddComment$7;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/DialogAddComment$7;-><init>(Lcom/tudou/ui/fragment/DialogAddComment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->edit:Landroid/widget/EditText;

    new-instance v1, Lcom/tudou/ui/fragment/DialogAddComment$8;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/DialogAddComment$8;-><init>(Lcom/tudou/ui/fragment/DialogAddComment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 299
    return-void
.end method

.method private openSoftInput()V
    .locals 3

    .prologue
    .line 318
    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 320
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 324
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/tudou/ui/fragment/DialogAddComment;->hideSoftInput()V

    .line 335
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 336
    return-void
.end method

.method public getReplayname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->replayname:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->edit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public initDialog()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->context:Landroid/content/Context;

    const v2, 0x7f0e0007

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->dialog:Landroid/app/Dialog;

    .line 130
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->dialog:Landroid/app/Dialog;

    const v1, 0x7f03026b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 131
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 136
    const-string v0, "PlayFlow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogAddComment->showAddComment flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0c0c17

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/CommentDialogRelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->contentView:Lcom/tudou/detail/CommentDialogRelativeLayout;

    .line 140
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->contentView:Lcom/tudou/detail/CommentDialogRelativeLayout;

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/DialogAddComment;->initView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->contentView:Lcom/tudou/detail/CommentDialogRelativeLayout;

    new-instance v1, Lcom/tudou/ui/fragment/DialogAddComment$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/DialogAddComment$1;-><init>(Lcom/tudou/ui/fragment/DialogAddComment;)V

    invoke-virtual {v0, v1}, Lcom/tudou/detail/CommentDialogRelativeLayout;->setLayoutListener(Lcom/tudou/detail/CommentDialogRelativeLayout$LayoutChangeListener;)V

    .line 167
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/tudou/ui/fragment/DialogAddComment$2;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/DialogAddComment$2;-><init>(Lcom/tudou/ui/fragment/DialogAddComment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 182
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/tudou/ui/fragment/DialogAddComment$3;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/DialogAddComment$3;-><init>(Lcom/tudou/ui/fragment/DialogAddComment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 190
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/tudou/ui/fragment/DialogAddComment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x1

    .line 344
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
    .line 91
    iput-object p1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->commentid:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->imgPath:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->imgPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->mImg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->imgPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->mImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->mImg:Landroid/widget/ImageView;

    new-instance v2, Lcom/tudou/ui/fragment/DialogAddComment$4;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/DialogAddComment$4;-><init>(Lcom/tudou/ui/fragment/DialogAddComment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->mImg:Landroid/widget/ImageView;

    new-instance v2, Lcom/tudou/ui/fragment/DialogAddComment$5;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/DialogAddComment$5;-><init>(Lcom/tudou/ui/fragment/DialogAddComment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->mImg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setReplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/tudou/ui/fragment/DialogAddComment;->replayname:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public show(Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .param p1, "location"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 303
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment;->edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 304
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment;->replayname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment;->edit:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u56de\u590d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/DialogAddComment;->replayname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 307
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment;->edit:Landroid/widget/EditText;

    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v2, p0, Lcom/tudou/ui/fragment/DialogAddComment;->edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 310
    .local v0, "chartext":Ljava/lang/CharSequence;
    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 311
    check-cast v1, Landroid/text/Spannable;

    .line 312
    .local v1, "spanText":Landroid/text/Spannable;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 315
    .end local v0    # "chartext":Ljava/lang/CharSequence;
    .end local v1    # "spanText":Landroid/text/Spannable;
    :cond_1
    return-void
.end method
