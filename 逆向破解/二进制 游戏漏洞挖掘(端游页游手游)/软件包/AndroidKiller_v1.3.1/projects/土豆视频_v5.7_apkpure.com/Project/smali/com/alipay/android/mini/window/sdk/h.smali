.class public Lcom/alipay/android/mini/window/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Ljava/util/Set;

.field private static f:Lcom/alipay/android/mini/window/sdk/h;


# instance fields
.field private final a:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Landroid/content/SharedPreferences;

.field private e:Z

.field private g:Landroid/widget/EditText;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alipay/android/mini/window/sdk/h;->b:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->a:Ljava/lang/String;

    .line 42
    iput-boolean v4, p0, Lcom/alipay/android/mini/window/sdk/h;->e:Z

    .line 55
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->h:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->h:Landroid/content/Context;

    const-string v1, "msp_guides"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->d:Landroid/content/SharedPreferences;

    .line 57
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->h:Landroid/content/Context;

    invoke-static {v0}, Lh/a;->a(Landroid/content/Context;)Lh/a;

    move-result-object v0

    invoke-virtual {v0}, Lh/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/h;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "version"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/h;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "info"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "switch"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "desc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/h;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->c:Landroid/view/View;

    return-object v0
.end method

.method public static a()Lcom/alipay/android/mini/window/sdk/h;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/alipay/android/mini/window/sdk/h;->f:Lcom/alipay/android/mini/window/sdk/h;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/alipay/android/mini/window/sdk/h;

    invoke-direct {v0}, Lcom/alipay/android/mini/window/sdk/h;-><init>()V

    sput-object v0, Lcom/alipay/android/mini/window/sdk/h;->f:Lcom/alipay/android/mini/window/sdk/h;

    .line 51
    :cond_0
    sget-object v0, Lcom/alipay/android/mini/window/sdk/h;->f:Lcom/alipay/android/mini/window/sdk/h;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/h;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/alipay/android/mini/window/sdk/h;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/android/mini/window/sdk/h;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/mini/window/sdk/h;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->h:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/h;->e:Z

    if-eqz v0, :cond_0

    .line 169
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 171
    const-string v1, "mini_layout"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 173
    iput-boolean v3, p0, Lcom/alipay/android/mini/window/sdk/h;->e:Z

    .line 174
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/h;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 175
    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/mini/uielement/c;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 80
    instance-of v0, p3, Lcom/alipay/android/mini/uielement/z;

    if-eqz v0, :cond_2

    move-object v0, p3

    .line 81
    check-cast v0, Lcom/alipay/android/mini/uielement/z;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/z;->D()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->g:Landroid/widget/EditText;

    .line 85
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/h;->g:Landroid/widget/EditText;

    .line 86
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    sget-object v0, Lcom/alipay/android/mini/window/sdk/h;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    if-eqz p3, :cond_1

    .line 89
    invoke-virtual {p3}, Lcom/alipay/android/mini/uielement/c;->b()V

    .line 165
    :cond_1
    :goto_1
    return-void

    .line 82
    :cond_2
    instance-of v0, p3, Lcom/alipay/android/mini/uielement/az;

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 83
    check-cast v0, Lcom/alipay/android/mini/uielement/az;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/az;->D()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->g:Landroid/widget/EditText;

    goto :goto_0

    .line 94
    :cond_3
    sget-object v0, Lcom/alipay/android/mini/window/sdk/h;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_4
    iput-boolean v3, p0, Lcom/alipay/android/mini/window/sdk/h;->e:Z

    .line 108
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 112
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 114
    const-string v0, "mini_layout"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 116
    if-eqz v5, :cond_5

    .line 117
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/h;->c:Landroid/view/View;

    if-nez v1, :cond_1

    .line 121
    const-string v1, "mini_guide_layout_new"

    invoke-static {v1}, Lj/i;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->c:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->c:Landroid/view/View;

    const-string v1, "mini_guide_btn"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    .line 126
    new-instance v0, Lcom/alipay/android/mini/window/sdk/i;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/mini/window/sdk/i;-><init>(Lcom/alipay/android/mini/window/sdk/h;Landroid/widget/EditText;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->c:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 96
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->d:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    if-eqz p3, :cond_1

    .line 99
    invoke-virtual {p3}, Lcom/alipay/android/mini/uielement/c;->b()V

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/h;->d:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/h;->e:Z

    return v0
.end method
