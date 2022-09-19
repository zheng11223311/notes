.class public Lcom/tudou/android/chat/ChatJoinedView;
.super Lcom/tudou/android/chat/ChatBasedView;
.source "ChatJoinedView.java"


# static fields
.field private static final RULE:Ljava/lang/String; = "qwertyuioplkjhgfdsazxcvbnmQWERTYUIOPLKJHGFDSAZXCVBNM1234567890"


# instance fields
.field private inviteView:Landroid/view/View;

.field private mChatRoomNumEditText:Landroid/widget/EditText;

.field private mJoinedViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tudou/android/chat/ChatJoinedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tudou/android/chat/ChatJoinedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/android/chat/ChatBasedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/tudou/android/chat/ChatJoinedView;->initView()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/android/chat/ChatJoinedView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/android/chat/ChatJoinedView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tudou/android/chat/ChatJoinedView;->inviteView:Landroid/view/View;

    return-object v0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatJoinedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030084

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    const v1, 0x7f0c029b

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatJoinedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/tudou/android/chat/ChatJoinedView;->mChatRoomNumEditText:Landroid/widget/EditText;

    .line 49
    const v1, 0x7f0c02b7

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatJoinedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/android/chat/ChatJoinedView;->mJoinedViewTitle:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f0c02b8

    invoke-virtual {p0, v1}, Lcom/tudou/android/chat/ChatJoinedView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/android/chat/ChatJoinedView;->inviteView:Landroid/view/View;

    .line 51
    iget-object v1, p0, Lcom/tudou/android/chat/ChatJoinedView;->inviteView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lcom/tudou/android/chat/ChatJoinedView;->setTextEnable(Landroid/widget/TextView;Z)V

    .line 53
    iget-object v1, p0, Lcom/tudou/android/chat/ChatJoinedView;->mChatRoomNumEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/tudou/android/chat/ChatJoinedView$1;

    invoke-direct {v3, p0}, Lcom/tudou/android/chat/ChatJoinedView$1;-><init>(Lcom/tudou/android/chat/ChatJoinedView;)V

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 71
    iget-object v1, p0, Lcom/tudou/android/chat/ChatJoinedView;->mChatRoomNumEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/tudou/android/chat/ChatJoinedView$2;

    invoke-direct {v2, p0}, Lcom/tudou/android/chat/ChatJoinedView$2;-><init>(Lcom/tudou/android/chat/ChatJoinedView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    return-void
.end method

.method public static setTextEnable(Landroid/widget/TextView;Z)V
    .locals 2
    .param p0, "aTextView"    # Landroid/widget/TextView;
    .param p1, "aEnabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 132
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 133
    const v0, 0x7f020116

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_0
    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 136
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 137
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public checkText(Ljava/lang/String;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    const-string v0, "[0-9a-zA-Z]*"

    .line 114
    .local v0, "check_str":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 115
    .local v4, "pzm":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 116
    .local v3, "mat":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 121
    .end local v0    # "check_str":Ljava/lang/String;
    .end local v3    # "mat":Ljava/util/regex/Matcher;
    .end local v4    # "pzm":Ljava/util/regex/Pattern;
    .local v2, "flag":Z
    :goto_0
    return v2

    .line 117
    .end local v2    # "flag":Z
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    const/4 v2, 0x0

    .restart local v2    # "flag":Z
    goto :goto_0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/android/chat/ChatJoinedView;->mChatRoomNumEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideInputMethod()V
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/tudou/android/chat/ChatJoinedView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 107
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/tudou/android/chat/ChatJoinedView;->mChatRoomNumEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 108
    return-void
.end method

.method public setChildrenClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "lis"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tudou/android/chat/ChatJoinedView;->inviteView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tudou/android/chat/ChatJoinedView;->mJoinedViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tudou/android/chat/ChatJoinedView;->mChatRoomNumEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 126
    invoke-super {p0}, Lcom/tudou/android/chat/ChatBasedView;->show()V

    .line 127
    return-void
.end method
