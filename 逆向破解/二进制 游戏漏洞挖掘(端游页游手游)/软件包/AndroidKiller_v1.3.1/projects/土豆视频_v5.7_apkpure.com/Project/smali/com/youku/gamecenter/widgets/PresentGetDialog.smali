.class public Lcom/youku/gamecenter/widgets/PresentGetDialog;
.super Landroid/app/Dialog;
.source "PresentGetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final GETALREADY:I = 0x3

.field public static final GETERRORTIME:I = 0x1

.field public static final GETFAILED:I = 0x2

.field public static final GETFAILEDUNKNOW:I = 0x4

.field public static final GETSUCCESS:I

.field public static isNeedFinish:Z


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mCode:Landroid/widget/TextView;

.field private mCodeContainer:Landroid/widget/LinearLayout;

.field private mContentText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCopy:Landroid/widget/TextView;

.field private mEndContainer:Landroid/widget/LinearLayout;

.field private mEndTime:Landroid/widget/TextView;

.field private mPackageName:Ljava/lang/String;

.field private mStartContainer:Landroid/widget/LinearLayout;

.field private mStartTime:Landroid/widget/TextView;

.field private mStatus:I

.field private mTitle:Landroid/widget/TextView;

.field private present_code:Ljava/lang/String;

.field private present_end:Ljava/lang/String;

.field private present_start:Ljava/lang/String;

.field private resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->isNeedFinish:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mStatus:I

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "present_code"    # Ljava/lang/String;
    .param p3, "present_start"    # Ljava/lang/String;
    .param p4, "present_end"    # Ljava/lang/String;
    .param p5, "mStatus"    # I
    .param p6, "packagename"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mStatus:I

    .line 73
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->present_code:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->present_start:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->present_end:Ljava/lang/String;

    .line 77
    iput p5, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mStatus:I

    .line 78
    iput-object p6, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mPackageName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private findNameByPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 208
    iget-object v6, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 210
    .local v4, "manager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 215
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 217
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 218
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 221
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v5

    .line 215
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 228
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    return-object v0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 167
    sget v0, Lcom/youku/gamecenter/R$layout;->widget_present_get_dialog:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->setContentView(I)V

    .line 168
    sget v0, Lcom/youku/gamecenter/R$id;->present_dialog_title:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mTitle:Landroid/widget/TextView;

    .line 169
    sget v0, Lcom/youku/gamecenter/R$id;->present_dialog_content_text:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mContentText:Landroid/widget/TextView;

    .line 170
    sget v0, Lcom/youku/gamecenter/R$id;->present_dialog_start_time_container:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mStartContainer:Landroid/widget/LinearLayout;

    .line 171
    sget v0, Lcom/youku/gamecenter/R$id;->present_dialog_end_time_container:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mEndContainer:Landroid/widget/LinearLayout;

    .line 172
    sget v0, Lcom/youku/gamecenter/R$id;->present_dialog_start_time:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mStartTime:Landroid/widget/TextView;

    .line 173
    sget v0, Lcom/youku/gamecenter/R$id;->present_dialog_end_time:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mEndTime:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/youku/gamecenter/R$id;->present_dialog_code_container:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mCodeContainer:Landroid/widget/LinearLayout;

    .line 175
    sget v0, Lcom/youku/gamecenter/R$id;->present_dialog_code:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mCode:Landroid/widget/TextView;

    .line 176
    sget v0, Lcom/youku/gamecenter/R$id;->present_dialog_copy:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mCopy:Landroid/widget/TextView;

    .line 177
    sget v0, Lcom/youku/gamecenter/R$id;->present_dialog_button:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mButton:Landroid/widget/Button;

    .line 179
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mCopy:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->resources:Landroid/content/res/Resources;

    .line 182
    return-void
.end method

.method private setUIDatas(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 123
    if-nez p1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/youku/gamecenter/R$string;->game_present_dialog_title_success:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mContentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/youku/gamecenter/R$string;->game_present_dialog_get_success:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mCode:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mCode:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/youku/gamecenter/R$string;->game_present_dialog_code:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->present_code:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mCodeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/youku/gamecenter/R$string;->game_present_dialog_title_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mContentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/youku/gamecenter/R$string;->game_present_dialog_overdue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :cond_2
    if-ne p1, v3, :cond_3

    .line 145
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mContentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/youku/gamecenter/R$string;->game_present_dialog_error_time:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mStartContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mStartTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->present_start:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mEndTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->present_end:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mContentText:Landroid/widget/TextView;

    const-string/jumbo v1, "\u62b1\u6b49\uff0c\u4f60\u4e4b\u524d\u5df2\u7ecf\u9886\u53d6\u8fc7\u8be5\u793c\u5305\u4e86\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mContentText:Landroid/widget/TextView;

    const-string/jumbo v1, "\u62b1\u6b49\uff0c\u9886\u53d6\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static showDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/youku/gamecenter/widgets/PresentGetDialog;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "start"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;
    .param p5, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 91
    if-nez p0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v1, p0

    .line 95
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    new-instance v0, Lcom/youku/gamecenter/widgets/PresentGetDialog;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/youku/gamecenter/widgets/PresentGetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    .local v0, "dialog":Lcom/youku/gamecenter/widgets/PresentGetDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->requestWindowFeature(I)Z

    .line 104
    :try_start_0
    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v7

    .line 106
    .local v7, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v1, "PresentGetDialog Error"

    const-string v2, "activity is not running!"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->dismiss()V

    .line 115
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 116
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 119
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 187
    .local v0, "id":I
    sget v1, Lcom/youku/gamecenter/R$id;->present_dialog_copy:I

    if-ne v0, v1, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->dismiss()V

    .line 189
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->present_code:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/gamecenter/R$string;->game_copy_to_clipboard_success:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/youku/gamecenter/util/SystemUtils;->copyDataToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    sget v1, Lcom/youku/gamecenter/R$id;->present_dialog_button:I

    if-ne v0, v1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->dismiss()V

    .line 195
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-direct {p0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->initView()V

    .line 85
    iget v0, p0, Lcom/youku/gamecenter/widgets/PresentGetDialog;->mStatus:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->setUIDatas(I)V

    .line 86
    return-void
.end method
