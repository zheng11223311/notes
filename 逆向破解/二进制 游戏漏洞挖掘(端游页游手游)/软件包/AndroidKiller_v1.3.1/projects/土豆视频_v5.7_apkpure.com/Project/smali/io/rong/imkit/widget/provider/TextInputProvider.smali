.class public Lio/rong/imkit/widget/provider/TextInputProvider;
.super Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
.source "TextInputProvider.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$OnEmojiItemClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;,
        Lio/rong/imkit/widget/provider/TextInputProvider$SaveDraftRunnable;,
        Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;,
        Lio/rong/imkit/widget/provider/TextInputProvider$OnSendButtonClick;
    }
.end annotation


# instance fields
.field mButton:Landroid/widget/Button;

.field mContext:Landroid/content/Context;

.field mEdit:Landroid/widget/EditText;

.field mExtraTextWatcher:Landroid/text/TextWatcher;

.field mFlow:Lio/rong/imkit/widget/RCViewFlow;

.field mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field mHandler:Landroid/os/Handler;

.field mInflater:Landroid/view/LayoutInflater;

.field mInputView:Lio/rong/imkit/widget/InputView;

.field mSmile:Landroid/widget/ImageView;

.field private onSendButtonClick:Lio/rong/imkit/widget/provider/TextInputProvider$OnSendButtonClick;


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 2
    .param p1, "context"    # Lio/rong/imkit/RongContext;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    .line 64
    const-string v0, "TextInputProvider"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 381
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/rong/imkit/util/AndroidEmoji;->isEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 383
    .local v1, "start":I
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 384
    .local v0, "end":I
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 385
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/rong/imkit/util/AndroidEmoji;->ensure(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 387
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 389
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mExtraTextWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_1

    .line 390
    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mExtraTextWatcher:Landroid/text/TextWatcher;

    invoke-interface {v2, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 392
    :cond_1
    const-string v2, "afterTextChanged"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mExtraTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mExtraTextWatcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 362
    :cond_0
    return-void
.end method

.method public obtainSwitchDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_keyboard:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onActive(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 288
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 289
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public onAttached(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imkit/widget/InputView;)V
    .locals 2
    .param p1, "fragment"    # Lio/rong/imkit/fragment/MessageInputFragment;
    .param p2, "view"    # Lio/rong/imkit/widget/InputView;

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onAttached(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imkit/widget/InputView;)V

    .line 72
    invoke-virtual {p1}, Lio/rong/imkit/fragment/MessageInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Lio/rong/imkit/fragment/MessageInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mHandler:Landroid/os/Handler;

    .line 76
    const-string v0, "onAttached"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 225
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mSmile:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 227
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mFlow:Lio/rong/imkit/widget/RCViewFlow;

    if-nez v3, :cond_2

    .line 228
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lio/rong/imkit/R$layout;->rc_wi_ext_pager:I

    iget-object v5, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v5}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 230
    .local v2, "view":Landroid/view/View;
    sget v3, Lio/rong/imkit/R$id;->rc_flow:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/widget/RCViewFlow;

    iput-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mFlow:Lio/rong/imkit/widget/RCViewFlow;

    .line 232
    sget v3, Lio/rong/imkit/R$id;->rc_indicator:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/RCCircleFlowIndicator;

    .line 233
    .local v1, "indicator":Lio/rong/imkit/widget/RCCircleFlowIndicator;
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mFlow:Lio/rong/imkit/widget/RCViewFlow;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/RCViewFlow;->setFlowIndicator(Lio/rong/imkit/widget/FlowIndicator;)V

    .line 235
    new-instance v0, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;

    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v4}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {}, Lio/rong/imkit/util/AndroidEmoji;->getEmojiList()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-direct {v0, v3, v4, v5, v6}, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Landroid/support/v4/app/FragmentManager;)V

    .line 236
    .local v0, "adapter":Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;
    invoke-virtual {v0, p0}, Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;->setEmojiItemClickListener(Lio/rong/imkit/widget/adapter/EmojiPagerAdapter$OnEmojiItemClickListener;)V

    .line 238
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mFlow:Lio/rong/imkit/widget/RCViewFlow;

    invoke-virtual {v3, v0}, Lio/rong/imkit/widget/RCViewFlow;->setAdapter(Landroid/widget/Adapter;)V

    .line 239
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 240
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 242
    :cond_0
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/InputView;->onEmojiProviderActive(Landroid/content/Context;)V

    .line 243
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v3, v7}, Lio/rong/imkit/widget/InputView;->setExtendLayoutVisibility(I)V

    .line 244
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v3}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 245
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mSmile:Landroid/widget/ImageView;

    sget v4, Lio/rong/imkit/R$drawable;->tudou_emoji_pressed:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    .end local v0    # "adapter":Lio/rong/imkit/widget/adapter/EmojiPagerAdapter;
    .end local v1    # "indicator":Lio/rong/imkit/widget/RCCircleFlowIndicator;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v3}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 248
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/InputView;->onEmojiProviderActive(Landroid/content/Context;)V

    .line 249
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v3, v7}, Lio/rong/imkit/widget/InputView;->setExtendLayoutVisibility(I)V

    .line 250
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mSmile:Landroid/widget/ImageView;

    sget v4, Lio/rong/imkit/R$drawable;->tudou_emoji_pressed:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 251
    :cond_3
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v3}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 252
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mSmile:Landroid/widget/ImageView;

    sget v4, Lio/rong/imkit/R$drawable;->tudou_emoji_pressed:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 254
    :cond_4
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/InputView;->onProviderInactive(Landroid/content/Context;)V

    goto :goto_0

    .line 256
    :cond_5
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 265
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->onSendButtonClick:Lio/rong/imkit/widget/provider/TextInputProvider$OnSendButtonClick;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->onSendButtonClick:Lio/rong/imkit/widget/provider/TextInputProvider$OnSendButtonClick;

    iget-object v4, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-interface {v3, v4}, Lio/rong/imkit/widget/provider/TextInputProvider$OnSendButtonClick;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 266
    :cond_6
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mSmile:Landroid/widget/ImageView;

    sget v4, Lio/rong/imkit/R$drawable;->tudou_emoji_selector:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/InputView;->onProviderActive(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lio/rong/imkit/widget/InputView;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "inputView"    # Lio/rong/imkit/widget/InputView;

    .prologue
    .line 100
    const-string v1, "onCreateView"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-object p1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInflater:Landroid/view/LayoutInflater;

    .line 103
    sget v1, Lio/rong/imkit/R$layout;->rc_wi_txt_provider:I

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    .line 105
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mSmile:Landroid/widget/ImageView;

    .line 107
    invoke-virtual {p3}, Lio/rong/imkit/widget/InputView;->getToggleLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 108
    sget v1, Lio/rong/imkit/R$layout;->rc_wi_text_btn:I

    invoke-virtual {p3}, Lio/rong/imkit/widget/InputView;->getToggleLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mButton:Landroid/widget/Button;

    .line 109
    invoke-virtual {p3}, Lio/rong/imkit/widget/InputView;->getToggleLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 112
    :cond_0
    invoke-virtual {p3}, Lio/rong/imkit/widget/InputView;->getToggleLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mButton:Landroid/widget/Button;

    if-nez v1, :cond_2

    .line 113
    :cond_1
    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mButton:Landroid/widget/Button;

    .line 115
    :cond_2
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 117
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mSmile:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    iput-object p3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    .line 121
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;-><init>(Lio/rong/imkit/widget/provider/TextInputProvider;Lio/rong/imlib/model/Conversation;)V

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    .line 125
    return-object v0
.end method

.method public onDetached()V
    .locals 4

    .prologue
    .line 81
    const-string v0, "Detached"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/widget/provider/TextInputProvider$SaveDraftRunnable;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lio/rong/imkit/widget/provider/TextInputProvider$SaveDraftRunnable;-><init>(Lio/rong/imkit/widget/provider/TextInputProvider;Lio/rong/imlib/model/Conversation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    .line 89
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mFlow:Lio/rong/imkit/widget/RCViewFlow;

    .line 90
    invoke-super {p0}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onDetached()V

    .line 91
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;-><init>(Lio/rong/imkit/widget/provider/TextInputProvider;Lio/rong/imlib/model/Conversation;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 353
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 354
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/InputView;->setExtendInputsVisibility(I)V

    .line 355
    :cond_0
    return-void
.end method

.method public onInactive(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v1}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 300
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mSmile:Landroid/widget/ImageView;

    sget v2, Lio/rong/imkit/R$drawable;->tudou_emoji_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    :cond_1
    :goto_1
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 312
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 301
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v1}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 302
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mSmile:Landroid/widget/ImageView;

    sget v2, Lio/rong/imkit/R$drawable;->tudou_emoji_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v8, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    if-eqz v8, :cond_1

    .line 331
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lio/rong/imkit/model/Emoji;

    if-eqz v8, :cond_0

    .line 332
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/Emoji;

    .line 334
    .local v1, "emoji":Lio/rong/imkit/model/Emoji;
    invoke-virtual {v1}, Lio/rong/imkit/model/Emoji;->getCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v7, v0

    .local v7, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v7, :cond_1

    aget-char v3, v0, v2

    .line 335
    .local v3, "item":C
    iget-object v8, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    iget-object v9, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v9

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .end local v0    # "arr$":[C
    .end local v1    # "emoji":Lio/rong/imkit/model/Emoji;
    .end local v2    # "i$":I
    .end local v3    # "item":C
    .end local v7    # "len$":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 339
    const/16 v4, 0x43

    .line 340
    .local v4, "keyCode":I
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    invoke-direct {v5, v8, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 342
    .local v5, "keyEventDown":Landroid/view/KeyEvent;
    new-instance v6, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    invoke-direct {v6, v8, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 343
    .local v6, "keyEventUp":Landroid/view/KeyEvent;
    iget-object v8, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v8, v4, v5}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 344
    iget-object v8, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v8, v4, v6}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 349
    .end local v4    # "keyCode":I
    .end local v5    # "keyEventDown":Landroid/view/KeyEvent;
    .end local v6    # "keyEventUp":Landroid/view/KeyEvent;
    :cond_1
    :goto_1
    return-void

    .line 345
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 275
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {v0}, Lio/rong/imkit/widget/InputView;->getExtendLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/InputView;->onProviderInactive(Landroid/content/Context;)V

    .line 277
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mInputView:Lio/rong/imkit/widget/InputView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/InputView;->setExtendLayoutVisibility(I)V

    .line 279
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSwitch(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 318
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/TextInputProvider;->onInactive(Landroid/content/Context;)V

    .line 319
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/widget/provider/TextInputProvider$SaveDraftRunnable;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lio/rong/imkit/widget/provider/TextInputProvider$SaveDraftRunnable;-><init>(Lio/rong/imkit/widget/provider/TextInputProvider;Lio/rong/imlib/model/Conversation;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;

    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/TextInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lio/rong/imkit/widget/provider/TextInputProvider$CleanDraftRunnable;-><init>(Lio/rong/imkit/widget/provider/TextInputProvider;Lio/rong/imlib/model/Conversation;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mExtraTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mExtraTextWatcher:Landroid/text/TextWatcher;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 370
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 371
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 374
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCurrentConversation(Lio/rong/imlib/model/Conversation;)V
    .locals 2
    .param p1, "conversation"    # Lio/rong/imlib/model/Conversation;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->setCurrentConversation(Lio/rong/imlib/model/Conversation;)V

    .line 131
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;-><init>(Lio/rong/imkit/widget/provider/TextInputProvider;Lio/rong/imlib/model/Conversation;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->executorBackground(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public setEditTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "listener"    # Landroid/text/TextWatcher;

    .prologue
    .line 409
    iput-object p1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mExtraTextWatcher:Landroid/text/TextWatcher;

    .line 410
    return-void
.end method

.method public setEditTextContent(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 402
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 406
    :cond_0
    return-void
.end method

.method public setOnSendButtonClickListener(Lio/rong/imkit/widget/provider/TextInputProvider$OnSendButtonClick;)V
    .locals 0
    .param p1, "clickListener"    # Lio/rong/imkit/widget/provider/TextInputProvider$OnSendButtonClick;

    .prologue
    .line 58
    iput-object p1, p0, Lio/rong/imkit/widget/provider/TextInputProvider;->onSendButtonClick:Lio/rong/imkit/widget/provider/TextInputProvider$OnSendButtonClick;

    .line 59
    return-void
.end method
