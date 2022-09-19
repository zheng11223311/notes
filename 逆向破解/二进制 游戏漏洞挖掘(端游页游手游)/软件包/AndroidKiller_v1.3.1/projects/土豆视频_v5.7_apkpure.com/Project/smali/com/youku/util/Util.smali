.class public final Lcom/youku/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/util/Util$RoundedDrawable;
    }
.end annotation


# static fields
.field private static final BUTTON_RELEASED:[F

.field private static final BUTTON_RELEASED1:[F

.field public static final CHINESE:I = 0x0

.field private static final HTTP:Ljava/lang/String; = "http://"

.field public static LAST_EXIT_INTENT_TIME:J = 0x0L

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final NUMBER_CHARACTER:I = 0x2

.field public static final NUMBER_OR_CHARACTER:I = 0x1

.field public static final ONE_DAY:J = 0x15180L

.field public static final ONE_HOUR:J = 0xe10L

.field public static final ONE_MIN:J = 0x3cL

.field public static final ONE_MONTH:J = 0x278d00L

.field public static final ONE_YEAR:J = 0x1da9c00L

.field public static TimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mDialog:Lcom/youku/widget/TudouDialog;

.field public static final metrics:Landroid/util/DisplayMetrics;

.field private static msgHandler:Landroid/os/Handler;

.field public static mutex:Ljava/lang/Object;

.field private static final scale:F

.field private static final scaledDensity:F

.field static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/util/Util;->mutex:Ljava/lang/Object;

    .line 672
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/util/Util;->LINE_SEPARATOR:Ljava/lang/String;

    .line 1090
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/youku/util/Util;->metrics:Landroid/util/DisplayMetrics;

    .line 1093
    sget-object v0, Lcom/youku/util/Util;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/youku/util/Util;->scale:F

    .line 1095
    sget-object v0, Lcom/youku/util/Util;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/youku/util/Util;->scaledDensity:F

    .line 1345
    new-instance v0, Lcom/youku/util/Util$1;

    invoke-direct {v0}, Lcom/youku/util/Util$1;-><init>()V

    sput-object v0, Lcom/youku/util/Util;->msgHandler:Landroid/os/Handler;

    .line 1966
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youku/util/Util;->TimeMap:Ljava/util/Map;

    .line 2877
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/youku/util/Util;->BUTTON_RELEASED1:[F

    .line 2879
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/youku/util/Util;->BUTTON_RELEASED:[F

    return-void

    .line 2877
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x3db80000    # -50.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x3db80000    # -50.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x3db80000    # -50.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2879
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method public static ChineseCount(Ljava/lang/String;)I
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1213
    const-string v0, "[\u4e00-\u9fa5]"

    .line 1214
    .local v0, "chineseRegex":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1215
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1217
    add-int/lit8 v1, v1, 0x1

    .line 1215
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1220
    :cond_1
    return v1
.end method

.method public static IsLandscape(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 1506
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1507
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1509
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static URLEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 620
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    const-string p0, ""

    .line 629
    .end local p0    # "s":Ljava/lang/String;
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 623
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    const-string p0, ""

    goto :goto_0

    .line 626
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string p0, ""

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/youku/widget/TudouDialog;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/youku/util/Util;->mDialog:Lcom/youku/widget/TudouDialog;

    return-object v0
.end method

.method public static addPressState(Landroid/view/View;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2984
    if-eqz p0, :cond_0

    .line 2985
    :cond_0
    return-void
.end method

.method public static addStateDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v8, 0x10100a7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2884
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2885
    .local v3, "sd":Landroid/graphics/drawable/StateListDrawable;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 2886
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2887
    .local v1, "defulte":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/youku/util/Util;->convertDrawable2BitmapByCanvasNofilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2888
    .local v0, "bit":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2889
    .local v2, "pressed":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v5, Lcom/youku/util/Util;->BUTTON_RELEASED1:[F

    invoke-direct {v4, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2890
    new-array v4, v7, [I

    aput v8, v4, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2891
    new-array v4, v6, [I

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2902
    :goto_0
    return-object v3

    .line 2893
    .end local v0    # "bit":Landroid/graphics/Bitmap;
    .end local v1    # "defulte":Landroid/graphics/drawable/Drawable;
    .end local v2    # "pressed":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2894
    .restart local v1    # "defulte":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/youku/util/Util;->convertDrawable2BitmapByCanvas(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2895
    .restart local v0    # "bit":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2898
    .restart local v2    # "pressed":Landroid/graphics/drawable/BitmapDrawable;
    new-array v4, v7, [I

    aput v8, v4, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2899
    new-array v4, v6, [I

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static alertDelete(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IAlertThree;I)V
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "mes"    # Ljava/lang/String;
    .param p2, "btn1"    # Ljava/lang/String;
    .param p3, "aIAlertThree"    # Lcom/youku/util/IAlertThree;
    .param p4, "tag"    # I

    .prologue
    .line 1847
    new-instance v0, Lcom/youku/widget/TudouDialog;

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v0, p0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    sput-object v0, Lcom/youku/util/Util;->mDialog:Lcom/youku/widget/TudouDialog;

    .line 1848
    sget-object v0, Lcom/youku/util/Util;->mDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0, p1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 1849
    sget-object v0, Lcom/youku/util/Util;->mDialog:Lcom/youku/widget/TudouDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 1850
    sget-object v0, Lcom/youku/util/Util;->mDialog:Lcom/youku/widget/TudouDialog;

    new-instance v1, Lcom/youku/util/Util$6;

    invoke-direct {v1, p3, p4}, Lcom/youku/util/Util$6;-><init>(Lcom/youku/util/IAlertThree;I)V

    invoke-virtual {v0, p2, v1}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1860
    sget-object v0, Lcom/youku/util/Util;->mDialog:Lcom/youku/widget/TudouDialog;

    const-string/jumbo v1, "\u79bb\u7ebf\u89c2\u770b"

    new-instance v2, Lcom/youku/util/Util$7;

    invoke-direct {v2, p3, p4}, Lcom/youku/util/Util$7;-><init>(Lcom/youku/util/IAlertThree;I)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalMiddleBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1869
    sget-object v0, Lcom/youku/util/Util;->mDialog:Lcom/youku/widget/TudouDialog;

    const-string/jumbo v1, "\u9000\u51fa\u5e94\u7528"

    new-instance v2, Lcom/youku/util/Util$8;

    invoke-direct {v2, p3, p4}, Lcom/youku/util/Util$8;-><init>(Lcom/youku/util/IAlertThree;I)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1877
    sget-object v0, Lcom/youku/util/Util;->mDialog:Lcom/youku/widget/TudouDialog;

    new-instance v1, Lcom/youku/util/Util$9;

    invoke-direct {v1, p3, p4}, Lcom/youku/util/Util$9;-><init>(Lcom/youku/util/IAlertThree;I)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1902
    sget-object v0, Lcom/youku/util/Util;->mDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 1903
    return-void
.end method

.method public static alertDelete(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/youku/util/IAlertPositive;I)V
    .locals 3
    .param p0, "aActivity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "mes"    # Ljava/lang/String;
    .param p2, "aIAlertDelete"    # Lcom/youku/util/IAlertPositive;
    .param p3, "tag"    # I

    .prologue
    .line 1764
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 1765
    .local v0, "ab":Lcom/youku/widget/TudouDialog;
    invoke-virtual {v0, p1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 1766
    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/youku/util/Util$2;

    invoke-direct {v2, v0, p2, p3}, Lcom/youku/util/Util$2;-><init>(Lcom/youku/widget/TudouDialog;Lcom/youku/util/IAlertPositive;I)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1776
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/youku/util/Util$3;

    invoke-direct {v2, v0}, Lcom/youku/util/Util$3;-><init>(Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1783
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 1784
    return-void
.end method

.method public static alertDelete(Lcom/tudou/ui/activity/BaseActivity;ILcom/youku/util/IAlert;I)V
    .locals 1
    .param p0, "aActivity"    # Lcom/tudou/ui/activity/BaseActivity;
    .param p1, "mesRes"    # I
    .param p2, "aIAlertDelete"    # Lcom/youku/util/IAlert;
    .param p3, "tag"    # I

    .prologue
    .line 1837
    invoke-virtual {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/youku/util/Util;->alertDelete(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/youku/util/IAlertPositive;I)V

    .line 1838
    return-void
.end method

.method public static alertDelete(Lcom/tudou/ui/activity/BaseActivity;ILcom/youku/util/IAlertPositive;I)V
    .locals 1
    .param p0, "aActivity"    # Lcom/tudou/ui/activity/BaseActivity;
    .param p1, "mesRes"    # I
    .param p2, "aIAlertDelete"    # Lcom/youku/util/IAlertPositive;
    .param p3, "tag"    # I

    .prologue
    .line 1832
    invoke-virtual {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/youku/util/Util;->alertDelete(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/youku/util/IAlertPositive;I)V

    .line 1833
    return-void
.end method

.method public static alertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IAlert;II)Lcom/youku/widget/TudouDialog;
    .locals 2
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "mesRes"    # Ljava/lang/String;
    .param p2, "sureRes"    # Ljava/lang/String;
    .param p3, "cancelRes"    # Ljava/lang/String;
    .param p4, "aIAlertDelete"    # Lcom/youku/util/IAlert;
    .param p5, "posTag"    # I
    .param p6, "negTag"    # I

    .prologue
    .line 1804
    new-instance v0, Lcom/youku/widget/TudouDialog;

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v0, p0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 1805
    .local v0, "ab":Lcom/youku/widget/TudouDialog;
    invoke-virtual {v0, p1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 1806
    new-instance v1, Lcom/youku/util/Util$4;

    invoke-direct {v1, v0, p4, p5}, Lcom/youku/util/Util$4;-><init>(Lcom/youku/widget/TudouDialog;Lcom/youku/util/IAlert;I)V

    invoke-virtual {v0, p2, v1}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1816
    new-instance v1, Lcom/youku/util/Util$5;

    invoke-direct {v1, v0, p4, p6}, Lcom/youku/util/Util$5;-><init>(Lcom/youku/widget/TudouDialog;Lcom/youku/util/IAlert;I)V

    invoke-virtual {v0, p3, v1}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1826
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 1827
    return-object v0
.end method

.method public static alertDialog(Lcom/tudou/ui/activity/BaseActivity;IIILcom/youku/util/IAlert;II)V
    .locals 7
    .param p0, "aActivity"    # Lcom/tudou/ui/activity/BaseActivity;
    .param p1, "mesRes"    # I
    .param p2, "sureRes"    # I
    .param p3, "cancelRes"    # I
    .param p4, "aIAlertDelete"    # Lcom/youku/util/IAlert;
    .param p5, "posTag"    # I
    .param p6, "negTag"    # I

    .prologue
    .line 1792
    invoke-virtual {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1793
    .local v1, "mes":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/tudou/ui/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1794
    .local v2, "sure":Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/tudou/ui/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "cancel":Ljava/lang/String;
    move-object v0, p0

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 1795
    invoke-static/range {v0 .. v6}, Lcom/youku/util/Util;->alertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IAlert;II)Lcom/youku/widget/TudouDialog;

    .line 1796
    return-void
.end method

.method public static call(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 3120
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3123
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-static {p0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3130
    :cond_0
    :goto_0
    return-void

    .line 3124
    :catch_0
    move-exception v0

    .line 3125
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 3126
    const-string v2, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone error mes==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkEmail(Ljava/lang/String;)Z
    .locals 7
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 844
    invoke-static {p0}, Lcom/youku/util/Util;->getChineseCharCount(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 845
    const/4 v0, 0x0

    .line 854
    :goto_0
    return v0

    .line 849
    :cond_0
    const-string v3, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    .line 850
    .local v3, "st3":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 851
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 852
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 853
    .local v0, "b":Z
    const-string v4, "YoukuUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "YoukuUtil.checkEmail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "),"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkPassword(Ljava/lang/String;)Z
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 926
    const-string v2, "[^0-9a-zA-Z]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 927
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 928
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkPhone(Ljava/lang/String;)Z
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 866
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 867
    const/4 v3, 0x0

    .line 873
    :goto_0
    return v3

    .line 870
    :cond_0
    const-string v2, "^[\\d]{11}$"

    .line 871
    .local v2, "st2":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 872
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 873
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    goto :goto_0
.end method

.method public static checkUserNickName(Ljava/lang/String;)Z
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 914
    const-string v2, "[^0-9a-zA-Z_\u4e00-\u9fa5]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 915
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 916
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2442
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->clearCacheFolder(Ljava/io/File;)I

    .line 2443
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2445
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->clearCacheFolder(Ljava/io/File;)I

    .line 2447
    :cond_0
    return-void
.end method

.method public static final clearCacheFolder(Ljava/io/File;)I
    .locals 8
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 2457
    const/4 v2, 0x0

    .line 2458
    .local v2, "deletedFiles":I
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2460
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 2463
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2464
    invoke-static {v1}, Lcom/youku/util/Util;->clearCacheFolder(Ljava/io/File;)I

    move-result v6

    add-int/2addr v2, v6

    .line 2470
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 2471
    add-int/lit8 v2, v2, 0x1

    .line 2460
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2474
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v3

    .line 2475
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "Youku"

    const-string v7, "Util#clearCacheFolder()"

    invoke-static {v6, v7, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2478
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return v2
.end method

.method public static clearClipData(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3436
    invoke-static {p0}, Lcom/youku/util/Util;->getClipboardManager(Landroid/content/Context;)Landroid/content/ClipboardManager;

    move-result-object v0

    .line 3437
    .local v0, "cb":Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 3438
    return-void
.end method

.method public static convertDrawable2BitmapByCanvas(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 2928
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2930
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2931
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2933
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v3, Lcom/youku/util/Util;->BUTTON_RELEASED1:[F

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2934
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2935
    return-object v0
.end method

.method public static convertDrawable2BitmapByCanvasNofilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 2918
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2920
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2921
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2923
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2924
    return-object v0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 689
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 691
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 694
    .local v0, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    sget-object v3, Lcom/youku/util/Util;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 698
    :catch_0
    move-exception v3

    .line 701
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 706
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 701
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 702
    :catch_1
    move-exception v3

    goto :goto_1

    .line 700
    :catchall_0
    move-exception v3

    .line 701
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 704
    :goto_2
    throw v3

    .line 702
    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public static copy(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 3106
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3109
    .local v0, "cmb":Landroid/content/ClipboardManager;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3114
    :goto_0
    return-void

    .line 3110
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/16 v7, 0x46

    const/4 v4, 0x0

    .line 2137
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2138
    .local v1, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2139
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2142
    const/16 v0, 0x46

    .line 2143
    .local v0, "REQUIRED_SIZE":I
    const/4 v3, 0x1

    .line 2145
    .local v3, "scale":I
    :goto_0
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    if-lt v5, v7, :cond_0

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    if-lt v5, v7, :cond_0

    .line 2146
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 2149
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2150
    .local v2, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2151
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2155
    .end local v0    # "REQUIRED_SIZE":I
    .end local v1    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "scale":I
    :goto_1
    return-object v4

    .line 2152
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 735
    if-nez p0, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 738
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 739
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 741
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 742
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 743
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_3

    .line 744
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 745
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/youku/util/Util;->deleteFile(Ljava/io/File;)V

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 750
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static dip2px(F)I
    .locals 2
    .param p0, "dipValue"    # F

    .prologue
    .line 1104
    sget v0, Lcom/youku/util/Util;->scale:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static dismissDialog()V
    .locals 1

    .prologue
    .line 1906
    sget-object v0, Lcom/youku/util/Util;->mDialog:Lcom/youku/widget/TudouDialog;

    if-eqz v0, :cond_0

    .line 1907
    sget-object v0, Lcom/youku/util/Util;->mDialog:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->cancel()V

    .line 1909
    :cond_0
    return-void
.end method

.method public static endSession(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 2796
    invoke-static {p0, p1}, Lcom/youku/analytics/AnalyticsAgent;->endSession(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2797
    return-void
.end method

.method public static formatCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "newCookie"    # Ljava/lang/String;
    .param p1, "oldCookie"    # Ljava/lang/String;

    .prologue
    .line 3401
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3416
    .end local p1    # "oldCookie":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 3404
    .restart local p1    # "oldCookie":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object p1, p0

    .line 3405
    goto :goto_0

    .line 3407
    :cond_1
    invoke-static {p0}, Lcom/youku/util/Util;->strFormatMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 3408
    .local v3, "newCookieMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/youku/util/Util;->strFormatMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 3410
    .local v4, "oldCookieMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 3411
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3412
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3413
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3415
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Lcom/youku/util/Util;->mapFormatStr(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .local v0, "cookie":Ljava/lang/String;
    move-object p1, v0

    .line 3416
    goto :goto_0
.end method

.method public static formatDuration(I)Ljava/lang/String;
    .locals 8
    .param p0, "second"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, "hh":I
    const/4 v1, 0x0

    .line 806
    .local v1, "mm":I
    const/16 v2, 0xe10

    if-lt p0, v2, :cond_0

    .line 807
    div-int/lit16 v0, p0, 0xe10

    .line 808
    :cond_0
    mul-int/lit16 v2, v0, 0xe10

    sub-int v2, p0, v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_1

    .line 809
    mul-int/lit16 v2, v0, 0xe10

    sub-int v2, p0, v2

    div-int/lit8 v1, v2, 0x3c

    .line 810
    :cond_1
    if-nez v0, :cond_2

    .line 811
    const-string v2, "%1$02d:%2$02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    mul-int/lit16 v4, v0, 0xe10

    sub-int v4, p0, v4

    mul-int/lit8 v5, v1, 0x3c

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 814
    :goto_0
    return-object v2

    :cond_2
    const-string v2, "%1$02d:%2$02d:%3$02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    mul-int/lit16 v4, v0, 0xe10

    sub-int v4, p0, v4

    mul-int/lit8 v5, v1, 0x3c

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static formatDuration(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 826
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, "time_":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v6, :cond_0

    .line 828
    const-string v1, "%1$02d:%2$02d"

    new-array v2, v6, [Ljava/lang/Object;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    aget-object v3, v0, v5

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 833
    :goto_0
    return-object v1

    .line 829
    :cond_0
    array-length v1, v0

    if-ne v1, v2, :cond_1

    .line 830
    const-string v1, "%1$02d:%2$02d:%3$02d"

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    aget-object v3, v0, v5

    aput-object v3, v2, v5

    aget-object v3, v0, v6

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 833
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static formatMiliSecondtoDate(J)Ljava/lang/String;
    .locals 4
    .param p0, "milisecond"    # J

    .prologue
    .line 2347
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 2348
    .local v0, "nowTime":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2349
    .local v2, "sdFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2350
    .local v1, "retStrFormatNowDate":Ljava/lang/String;
    return-object v1
.end method

.method public static formatMiliSecondtoTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "milisecond"    # J

    .prologue
    .line 2359
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 2360
    .local v0, "nowTime":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2361
    .local v2, "sdFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2362
    .local v1, "retStrFormatNowDate":Ljava/lang/String;
    return-object v1
.end method

.method public static formatNumber(I)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # I

    .prologue
    const v2, 0x5f5e100

    .line 511
    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    .line 512
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    .line 513
    :cond_0
    if-ge p0, v2, :cond_1

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v2, p0, 0x2710

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4e07\u6b21"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 516
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x5f5e100

    div-int v2, p0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4ebf\u6b21"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 520
    .end local v0    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 524
    const-string v0, ""

    goto :goto_0
.end method

.method public static formatNumber(J)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # J

    .prologue
    const-wide/32 v4, 0x5f5e100

    const-wide/16 v2, 0x2710

    .line 3325
    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    .line 3326
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3338
    :goto_0
    return-object v0

    .line 3327
    :cond_0
    cmp-long v1, p0, v4

    if-gez v1, :cond_1

    .line 3328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x2710

    div-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4e07"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 3330
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v2, 0x5f5e100

    div-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4ebf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 3334
    .end local v0    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3338
    const-string v0, ""

    goto :goto_0
.end method

.method public static formatNumber2(I)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # I

    .prologue
    const v2, 0x5f5e100

    .line 537
    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    .line 538
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6b21"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    :goto_0
    return-object v0

    .line 539
    :cond_0
    if-ge p0, v2, :cond_1

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v2, p0, 0x2710

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4e07\u6b21"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 542
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x5f5e100

    div-int v2, p0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4ebf\u6b21"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 546
    .end local v0    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 550
    const-string v0, ""

    goto :goto_0
.end method

.method public static formatSize(F)Ljava/lang/String;
    .locals 12
    .param p0, "size"    # F

    .prologue
    const-wide/16 v10, 0x400

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1529
    const-wide/16 v2, 0x400

    .line 1530
    .local v2, "kb":J
    mul-long v4, v2, v10

    .line 1531
    .local v4, "mb":J
    mul-long v0, v4, v10

    .line 1532
    .local v0, "gb":J
    long-to-float v6, v2

    cmpg-float v6, p0, v6

    if-gez v6, :cond_0

    .line 1533
    const-string v6, "%d B"

    new-array v7, v7, [Ljava/lang/Object;

    float-to-int v8, p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1539
    :goto_0
    return-object v6

    .line 1534
    :cond_0
    long-to-float v6, v4

    cmpg-float v6, p0, v6

    if-gez v6, :cond_1

    .line 1535
    const-string v6, "%.1f KB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v2

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1536
    :cond_1
    long-to-float v6, v0

    cmpg-float v6, p0, v6

    if-gez v6, :cond_2

    .line 1537
    const-string v6, "%.1f MB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v4

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1539
    :cond_2
    const-string v6, "%.1f GB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v0

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static formatSize2(F)Ljava/lang/String;
    .locals 12
    .param p0, "size"    # F

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1551
    const-wide/16 v2, 0x3e8

    .line 1552
    .local v2, "kb":J
    mul-long v4, v2, v10

    .line 1553
    .local v4, "mb":J
    mul-long v0, v4, v10

    .line 1554
    .local v0, "gb":J
    long-to-float v6, v2

    cmpg-float v6, p0, v6

    if-gez v6, :cond_0

    .line 1555
    const-string v6, "%dB"

    new-array v7, v7, [Ljava/lang/Object;

    float-to-int v8, p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1561
    :goto_0
    return-object v6

    .line 1556
    :cond_0
    long-to-float v6, v4

    cmpg-float v6, p0, v6

    if-gez v6, :cond_1

    .line 1557
    const-string v6, "%.0fKB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v2

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1558
    :cond_1
    long-to-float v6, v0

    cmpg-float v6, p0, v6

    if-gez v6, :cond_2

    .line 1559
    const-string v6, "%.0fMB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v4

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1561
    :cond_2
    const-string v6, "%.0fGB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v0

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static formatSizeM(F)Ljava/lang/String;
    .locals 12
    .param p0, "size"    # F

    .prologue
    const-wide/16 v10, 0x400

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1573
    const-wide/16 v2, 0x400

    .line 1574
    .local v2, "kb":J
    mul-long v4, v2, v10

    .line 1575
    .local v4, "mb":J
    mul-long v0, v4, v10

    .line 1576
    .local v0, "gb":J
    long-to-float v6, v0

    cmpg-float v6, p0, v6

    if-gez v6, :cond_0

    .line 1577
    const-string v6, "%.1f MB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v4

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1579
    :goto_0
    return-object v6

    :cond_0
    const-string v6, "%.1f GB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-float v8, v0

    div-float v8, p0, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static formatTime(D)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # D

    .prologue
    .line 233
    double-to-long v2, p0

    .line 235
    .local v2, "msec":J
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x3c

    rem-long v8, v2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "seconds":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x3c

    div-long v8, v2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "minutes":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 244
    .end local v1    # "minutes":Ljava/lang/String;
    .end local v4    # "seconds":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR formatTime() e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;)V

    .line 244
    const-string v5, ""

    goto :goto_0
.end method

.method public static formatTime2(D)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # D

    .prologue
    .line 486
    double-to-long v2, p0

    .line 488
    .local v2, "msec":J
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x3c

    rem-long v8, v2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, "seconds":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x3c

    div-long v8, v2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "minutes":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 491
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 493
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u5206"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u79d2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 497
    .end local v1    # "minutes":Ljava/lang/String;
    .end local v4    # "seconds":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR formatTime() e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;)V

    .line 497
    const-string v5, ""

    goto :goto_0
.end method

.method public static formatTime3(D)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # D

    .prologue
    .line 197
    double-to-long v4, p0

    .line 198
    .local v4, "msec":J
    const/4 v1, 0x0

    .line 199
    .local v1, "hours":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x3c

    rem-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "seconds":Ljava/lang/String;
    const-wide/16 v8, 0x3c

    div-long v8, v4, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x3c

    div-long v8, v4, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x3c

    div-long v8, v4, v8

    const-wide/16 v10, 0x3c

    rem-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "minutes":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 208
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 210
    if-nez v1, :cond_2

    .line 211
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 220
    .end local v2    # "minutes":Ljava/lang/String;
    .end local v3    # "seconds":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 205
    .restart local v3    # "seconds":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x3c

    div-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "minutes":Ljava/lang/String;
    goto :goto_0

    .line 214
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 215
    .local v6, "times":Ljava/lang/String;
    goto :goto_1

    .line 218
    .end local v2    # "minutes":Ljava/lang/String;
    .end local v3    # "seconds":Ljava/lang/String;
    .end local v6    # "times":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR formatTime() e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/youku/util/Logger;->e(Ljava/lang/String;)V

    .line 220
    const-string v6, ""

    goto :goto_1
.end method

.method public static generateRandomStringByLength(I)Ljava/lang/String;
    .locals 8
    .param p0, "length"    # I

    .prologue
    const/4 v7, 0x2

    .line 3446
    const-string v4, ""

    .line 3447
    .local v4, "val":Ljava/lang/String;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 3448
    .local v3, "random":Ljava/util/Random;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_4

    .line 3449
    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    const-string v0, "char"

    .line 3450
    .local v0, "charOrNum":Ljava/lang/String;
    :goto_1
    const-string v5, "char"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3451
    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    const/16 v1, 0x41

    .line 3452
    .local v1, "choice":I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x1a

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v1

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3448
    .end local v1    # "choice":I
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3449
    .end local v0    # "charOrNum":Ljava/lang/String;
    :cond_1
    const-string v0, "num"

    goto :goto_1

    .line 3451
    .restart local v0    # "charOrNum":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x61

    goto :goto_2

    .line 3453
    :cond_3
    const-string v5, "num"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3454
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 3457
    .end local v0    # "charOrNum":Ljava/lang/String;
    :cond_4
    return-object v4
.end method

.method public static getChineseCharCount(Ljava/lang/String;)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 949
    const/4 v0, 0x0

    .line 950
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 951
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, "tempStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 953
    add-int/lit8 v0, v0, 0x1

    .line 950
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 956
    .end local v2    # "tempStr":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public static getClipData(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3428
    invoke-static {p0}, Lcom/youku/util/Util;->getClipboardManager(Landroid/content/Context;)Landroid/content/ClipboardManager;

    move-result-object v0

    .line 3429
    .local v0, "cb":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    .line 3430
    .local v2, "mClipData":Landroid/content/ClipData;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 3431
    .local v1, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v1, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3432
    .local v3, "mClipStr":Ljava/lang/String;
    return-object v3
.end method

.method public static getClipboardManager(Landroid/content/Context;)Landroid/content/ClipboardManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3420
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method

.method public static getDeviceSize(IIF)Ljava/lang/String;
    .locals 8
    .param p0, "height"    # I
    .param p1, "wight"    # I
    .param p2, "dpi"    # F

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 3349
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3350
    .local v0, "df":Ljava/text/DecimalFormat;
    int-to-double v2, p0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-double v4, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    float-to-double v4, p2

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEnNZhMixStringLength(Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 938
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0}, Lcom/youku/util/Util;->getChineseCharCount(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {}, Lcom/youku/util/Util;->hasExternalCacheDir()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 164
    :goto_0
    return-object v1

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "cacheDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 6
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1729
    const-wide/16 v2, 0x0

    .line 1730
    .local v2, "size":J
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1731
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1732
    .local v0, "flist":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 1733
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1734
    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/youku/util/Util;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1732
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1736
    :cond_0
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1

    .line 1740
    .end local v0    # "flist":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1742
    :cond_2
    return-wide v2
.end method

.method public static final getGUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/youku/vo/DeviceInfo;->MAC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/youku/vo/DeviceInfo;->IMEI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2948
    new-instance v0, Lcom/youku/util/Util$11;

    invoke-direct {v0}, Lcom/youku/util/Util$11;-><init>()V

    .line 2972
    .local v0, "listener":Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    return-object v0
.end method

.method public static getListWidth()I
    .locals 1

    .prologue
    .line 2213
    invoke-static {}, Lcom/youku/util/Util;->isLandscape()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/youku/vo/DeviceInfo;->HEIGHT:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/youku/vo/DeviceInfo;->WIDTH:I

    goto :goto_0
.end method

.method public static getMemoryClass(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    return v0
.end method

.method public static getMinPixels()I
    .locals 2

    .prologue
    .line 2209
    sget v0, Lcom/youku/vo/DeviceInfo;->HEIGHT:I

    sget v1, Lcom/youku/vo/DeviceInfo;->WIDTH:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static getOtherProgrss()I
    .locals 22

    .prologue
    .line 1589
    invoke-static {}, Lcom/youku/util/Util;->hasSDCard()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1590
    const/4 v14, 0x0

    .line 1613
    .local v3, "file":Ljava/io/File;
    .local v4, "nAvailaBlock":J
    .local v6, "nBlocSize":J
    .local v8, "nSDFreeSize":J
    .local v10, "nSDTotalSize":J
    .local v12, "nTotalBlocks":J
    .local v14, "result":I
    .local v15, "statFs":Landroid/os/StatFs;
    .local v16, "size":J
    :goto_0
    return v14

    .line 1592
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "nAvailaBlock":J
    .end local v6    # "nBlocSize":J
    .end local v8    # "nSDFreeSize":J
    .end local v10    # "nSDTotalSize":J
    .end local v12    # "nTotalBlocks":J
    .end local v14    # "result":I
    .end local v15    # "statFs":Landroid/os/StatFs;
    .end local v16    # "size":J
    :cond_0
    new-instance v15, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1594
    .restart local v15    # "statFs":Landroid/os/StatFs;
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockCount()I

    move-result v18

    move/from16 v0, v18

    int-to-long v12, v0

    .line 1595
    .restart local v12    # "nTotalBlocks":J
    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v4, v0

    .line 1596
    .restart local v4    # "nAvailaBlock":J
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v6, v0

    .line 1597
    .restart local v6    # "nBlocSize":J
    mul-long v10, v12, v6

    .line 1598
    .restart local v10    # "nSDTotalSize":J
    mul-long v8, v4, v6

    .line 1600
    .restart local v8    # "nSDFreeSize":J
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "youku"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    .line 1603
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1605
    :cond_1
    const-wide/16 v16, 0x0

    .line 1607
    .restart local v16    # "size":J
    sub-long v18, v10, v8

    :try_start_0
    invoke-static {v3}, Lcom/youku/util/Util;->getFileSize(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    sub-long v16, v18, v20

    .line 1612
    :goto_1
    const-wide/16 v18, 0x64

    mul-long v18, v18, v16

    div-long v18, v18, v10

    move-wide/from16 v0, v18

    long-to-int v14, v0

    .line 1613
    .restart local v14    # "result":I
    goto :goto_0

    .line 1608
    .end local v14    # "result":I
    :catch_0
    move-exception v2

    .line 1610
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getPaths(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "infopath"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 2406
    const/4 v1, 0x0

    .line 2407
    .local v1, "dd":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2408
    .local v0, "cc":[Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2409
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2411
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2412
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2414
    :cond_1
    if-eqz v1, :cond_2

    array-length v3, v1

    if-le v3, v4, :cond_2

    if-eqz v0, :cond_2

    array-length v3, v0

    if-le v3, v4, :cond_2

    .line 2415
    aget-object v3, v0, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v1, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v1, v4

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2417
    const/4 v2, 0x1

    .line 2422
    :cond_2
    return v2
.end method

.method public static getPosterImgUrlTrait(Lcom/youku/vo/Poster;)Ljava/lang/String;
    .locals 4
    .param p0, "p"    # Lcom/youku/vo/Poster;

    .prologue
    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/youku/vo/Poster;->vid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/Poster;->small_img:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/vo/Poster;->small_img:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPosterImgUrlTrait(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 2278
    :try_start_0
    const-string v2, "*"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2283
    .local v1, "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2279
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2280
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "Youku"

    const-string v3, "Util#getPosterImgUrlTrait()"

    invoke-static {v2, v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2281
    const-string v1, ""

    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getPressDrawable(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5
    .param p0, "def"    # Landroid/graphics/Bitmap;
    .param p1, "pressed"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 2907
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2908
    .local v0, "sd":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2909
    new-array v1, v4, [I

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2910
    return-object v0
.end method

.method public static getPushDate()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 3262
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 3263
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 3264
    .local v1, "hours":I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 3265
    .local v2, "minutes":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 3267
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/16 v4, 0xc

    if-ge v1, v4, :cond_2

    .line 3268
    const-string/jumbo v4, "\u4e0a\u5348 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3272
    :goto_0
    if-ge v1, v6, :cond_0

    .line 3273
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3275
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3277
    if-ge v2, v6, :cond_1

    .line 3278
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3280
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 3282
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3270
    :cond_2
    const-string/jumbo v4, "\u4e0b\u5348 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getRandomColorWord()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2860
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2862
    .local v0, "colorWords":[Ljava/lang/String;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 2863
    .local v2, "random":Ljava/util/Random;
    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 2864
    .local v1, "num":I
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "color world num====="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2865
    aget-object v3, v0, v1

    return-object v3
.end method

.method public static getRandomWord()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2869
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2871
    .local v2, "words":[Ljava/lang/String;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 2872
    .local v1, "random":Ljava/util/Random;
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 2873
    .local v0, "num":I
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "color world num====="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    aget-object v3, v2, v0

    return-object v3
.end method

.method public static getRemainHours()J
    .locals 10

    .prologue
    .line 3204
    const-wide/16 v0, 0x0

    .line 3205
    .local v0, "hours":J
    const-string v6, "endtime"

    invoke-static {v6}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3206
    .local v2, "sTime":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3207
    new-instance v3, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    .line 3208
    .local v3, "ts":Ljava/sql/Timestamp;
    invoke-static {v2}, Ljava/sql/Timestamp;->valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v3

    .line 3209
    invoke-virtual {v3}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 3211
    .local v4, "times":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 3212
    const-wide/32 v6, 0x36ee80

    div-long v0, v4, v6

    .line 3216
    .end local v3    # "ts":Ljava/sql/Timestamp;
    .end local v4    # "times":J
    :cond_0
    return-wide v0
.end method

.method public static getSDCardInfo()[J
    .locals 12

    .prologue
    .line 2164
    const-string v9, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2166
    const/4 v9, 0x2

    new-array v6, v9, [J

    .line 2167
    .local v6, "sdCardInfo":[J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 2168
    .local v7, "sdcardDir":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2169
    .local v8, "sf":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v4, v9

    .line 2170
    .local v4, "bSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v2, v9

    .line 2171
    .local v2, "bCount":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 2172
    .local v0, "availBlocks":J
    const/4 v9, 0x0

    mul-long v10, v4, v2

    aput-wide v10, v6, v9

    .line 2173
    const/4 v9, 0x1

    mul-long v10, v4, v0

    aput-wide v10, v6, v9

    .line 2176
    :goto_0
    return-object v6

    .end local v0    # "availBlocks":J
    .end local v2    # "bCount":J
    .end local v4    # "bSize":J
    .end local v6    # "sdCardInfo":[J
    .end local v7    # "sdcardDir":Ljava/io/File;
    .end local v8    # "sf":Landroid/os/StatFs;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getSDCardMemory()[J
    .locals 14

    .prologue
    .line 1133
    const/4 v6, 0x0

    .line 1134
    .local v6, "sdCardInfo":[J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 1135
    .local v9, "state":Ljava/lang/String;
    const-string v10, "mounted"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1136
    const/4 v10, 0x2

    new-array v6, v10, [J

    .line 1137
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 1138
    .local v7, "sdcardDir":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1139
    .local v8, "sf":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v4, v10

    .line 1140
    .local v4, "bSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v2, v10

    .line 1141
    .local v2, "bCount":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 1143
    .local v0, "availBlocks":J
    const/4 v10, 0x0

    mul-long v12, v4, v2

    aput-wide v12, v6, v10

    .line 1144
    const/4 v10, 0x1

    mul-long v12, v4, v0

    aput-wide v12, v6, v10

    .line 1146
    .end local v0    # "availBlocks":J
    .end local v2    # "bCount":J
    .end local v4    # "bSize":J
    .end local v7    # "sdcardDir":Ljava/io/File;
    .end local v8    # "sf":Landroid/os/StatFs;
    :cond_0
    return-object v6
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2844
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2845
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2847
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2848
    .local v1, "height":I
    return v1
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2831
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2832
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2834
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2835
    .local v1, "width":I
    return v1
.end method

.method public static getSdcardFreeSpace()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1657
    invoke-static {}, Lcom/youku/util/Util;->hasSDCard()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1658
    const-string v12, "0"

    .line 1673
    .local v0, "file":Ljava/io/File;
    .local v1, "statFs":Landroid/os/StatFs;
    .local v2, "nAvailaBlock":J
    .local v4, "nBlocSize":J
    .local v6, "nSDFreeSize":J
    .local v8, "nSDTotalSize":J
    .local v10, "nTotalBlocks":J
    :goto_0
    return-object v12

    .line 1660
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "statFs":Landroid/os/StatFs;
    .end local v2    # "nAvailaBlock":J
    .end local v4    # "nBlocSize":J
    .end local v6    # "nSDFreeSize":J
    .end local v8    # "nSDTotalSize":J
    .end local v10    # "nTotalBlocks":J
    :cond_0
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1662
    .restart local v1    # "statFs":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v12

    int-to-long v10, v12

    .line 1663
    .restart local v10    # "nTotalBlocks":J
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v2, v12

    .line 1664
    .restart local v2    # "nAvailaBlock":J
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v4, v12

    .line 1665
    .restart local v4    # "nBlocSize":J
    mul-long v8, v10, v4

    .line 1666
    .restart local v8    # "nSDTotalSize":J
    mul-long v6, v2, v4

    .line 1668
    .restart local v6    # "nSDFreeSize":J
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "youku"

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1671
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1673
    :cond_1
    sub-long v12, v8, v6

    long-to-float v12, v12

    invoke-static {v12}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v12

    goto :goto_0
.end method

.method public static getSdcardOtherSpace()Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1683
    invoke-static {}, Lcom/youku/util/Util;->hasSDCard()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1684
    const-string v12, "0"

    .line 1699
    .local v0, "file":Ljava/io/File;
    .local v1, "statFs":Landroid/os/StatFs;
    .local v2, "nAvailaBlock":J
    .local v4, "nBlocSize":J
    .local v6, "nSDFreeSize":J
    .local v8, "nSDTotalSize":J
    .local v10, "nTotalBlocks":J
    :goto_0
    return-object v12

    .line 1686
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "statFs":Landroid/os/StatFs;
    .end local v2    # "nAvailaBlock":J
    .end local v4    # "nBlocSize":J
    .end local v6    # "nSDFreeSize":J
    .end local v8    # "nSDTotalSize":J
    .end local v10    # "nTotalBlocks":J
    :cond_0
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1688
    .restart local v1    # "statFs":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v12

    int-to-long v10, v12

    .line 1689
    .restart local v10    # "nTotalBlocks":J
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v2, v12

    .line 1690
    .restart local v2    # "nAvailaBlock":J
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v4, v12

    .line 1691
    .restart local v4    # "nBlocSize":J
    mul-long v8, v10, v4

    .line 1692
    .restart local v8    # "nSDTotalSize":J
    mul-long v6, v2, v4

    .line 1694
    .restart local v6    # "nSDFreeSize":J
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "youku"

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1697
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1699
    :cond_1
    sub-long v12, v8, v6

    invoke-static {v0}, Lcom/youku/util/Util;->getFileSize(Ljava/io/File;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-float v12, v12

    invoke-static {v12}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v12

    goto :goto_0
.end method

.method public static getSdcardYoukuSpace()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1709
    invoke-static {}, Lcom/youku/util/Util;->hasSDCard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1710
    const-string v1, "0"

    .line 1717
    .local v0, "file":Ljava/io/File;
    :goto_0
    return-object v1

    .line 1712
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/youku"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1714
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1715
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1717
    :cond_1
    invoke-static {v0}, Lcom/youku/util/Util;->getFileSize(Ljava/io/File;)J

    move-result-wide v2

    long-to-float v1, v2

    invoke-static {v1}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getStringLeng(Ljava/lang/String;)I
    .locals 6
    .param p0, "strValue"    # Ljava/lang/String;

    .prologue
    .line 891
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 892
    const/4 v2, 0x0

    .line 904
    :goto_0
    return v2

    .line 894
    :cond_0
    const/4 v2, 0x0

    .line 895
    .local v2, "strLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 896
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 897
    .local v1, "strIndex":Ljava/lang/String;
    invoke-static {v1}, Lcom/youku/util/Util;->isChinese(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 898
    add-int/lit8 v2, v2, 0x2

    .line 895
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 900
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 903
    .end local v1    # "strIndex":Ljava/lang/String;
    :cond_2
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nick name leng======="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTargetType(Ljava/lang/String;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2800
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2822
    :cond_0
    :goto_0
    return v0

    .line 2803
    :cond_1
    const-string/jumbo v1, "video"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2805
    const-string v1, "album"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2806
    const/4 v0, 0x1

    goto :goto_0

    .line 2807
    :cond_2
    const-string/jumbo v1, "url"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2808
    const/4 v0, 0x5

    goto :goto_0

    .line 2809
    :cond_3
    const-string v1, "playlist"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2810
    const/4 v0, 0x2

    goto :goto_0

    .line 2811
    :cond_4
    const-string v1, "game_download_button"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2812
    const/4 v0, 0x4

    goto :goto_0

    .line 2813
    :cond_5
    const-string v1, "game_normal_button"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2814
    const/4 v0, 0x7

    goto :goto_0

    .line 2815
    :cond_6
    const-string v1, "game_show_detail_page"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2816
    const/4 v0, 0x6

    goto :goto_0

    .line 2817
    :cond_7
    const-string v1, "live_broadcast"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2818
    const/16 v0, 0xa

    goto :goto_0

    .line 2819
    :cond_8
    const-string/jumbo v1, "vip_page"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2820
    const/16 v0, 0xb

    goto :goto_0
.end method

.method public static getTextWidth(Ljava/lang/String;F)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textSize"    # F

    .prologue
    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 130
    .local v0, "mPaint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method public static getTudouFormat(Ljava/lang/String;I)I
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "hdType"    # I

    .prologue
    .line 2234
    const-string/jumbo v0, "\u8d85\u6e05"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2235
    const/4 v0, 0x5

    invoke-static {v0, p1}, Lcom/youku/util/Util;->getTudouFormat(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2241
    :goto_0
    return v0

    .line 2236
    :cond_0
    const-string/jumbo v0, "\u9ad8\u6e05"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2237
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/youku/util/Util;->getTudouFormat(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2238
    :cond_1
    const-string/jumbo v0, "\u6807\u6e05"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2239
    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/youku/util/Util;->getTudouFormat(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2241
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTudouFormat(II)Ljava/lang/String;
    .locals 2
    .param p0, "format"    # I
    .param p1, "hdType"    # I

    .prologue
    const/4 v1, 0x5

    .line 2253
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2268
    :goto_0
    return-object v0

    .line 2255
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 2256
    if-eq p0, v1, :cond_1

    .line 2257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2259
    :cond_1
    const-string v0, "3"

    goto :goto_0

    .line 2261
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 2262
    if-eq p0, v1, :cond_3

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2265
    :cond_3
    const-string v0, "3"

    goto :goto_0

    .line 2268
    :cond_4
    const-string v0, "2"

    goto :goto_0
.end method

.method public static getVerticalText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    .line 2186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2187
    const-string v5, ""

    .line 2204
    :goto_0
    return-object v5

    .line 2189
    :cond_0
    sget-object v2, Lcom/youku/util/Util;->LINE_SEPARATOR:Ljava/lang/String;

    .line 2190
    .local v2, "nextLine":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2191
    const-string v2, "\n"

    .line 2193
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2195
    .local v3, "sBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2196
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 2197
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2198
    .local v4, "tem":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2199
    add-int/lit8 v5, v1, -0x1

    if-eq v0, v5, :cond_2

    .line 2200
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2196
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2204
    .end local v4    # "tem":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getWitdth(Landroid/app/Activity;)I
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 2427
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2428
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2429
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2432
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :goto_0
    return v2

    .line 2431
    :catch_0
    move-exception v1

    .line 2432
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getYoukuProgrss(Ljava/lang/Long;)I
    .locals 22
    .param p0, "add"    # Ljava/lang/Long;

    .prologue
    .line 1623
    const/4 v14, 0x0

    .line 1624
    .local v14, "result":I
    invoke-static {}, Lcom/youku/util/Util;->hasSDCard()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1625
    const/16 v18, 0x0

    .line 1647
    :goto_0
    return v18

    .line 1627
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/youku"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1629
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    .line 1630
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1632
    :cond_1
    new-instance v15, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1634
    .local v15, "statFs":Landroid/os/StatFs;
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockCount()I

    move-result v18

    move/from16 v0, v18

    int-to-long v12, v0

    .line 1635
    .local v12, "nTotalBlocks":J
    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v4, v0

    .line 1636
    .local v4, "nAvailaBlock":J
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v6, v0

    .line 1637
    .local v6, "nBlocSize":J
    mul-long v10, v12, v6

    .line 1638
    .local v10, "nSDTotalSize":J
    mul-long v8, v4, v6

    .line 1639
    .local v8, "nSDFreeSize":J
    const-wide/16 v16, 0x0

    .line 1641
    .local v16, "size":J
    :try_start_0
    invoke-static {v3}, Lcom/youku/util/Util;->getFileSize(Ljava/io/File;)J

    move-result-wide v18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    add-long v16, v18, v20

    .line 1646
    :goto_1
    const-wide/16 v18, 0x64

    mul-long v18, v18, v16

    div-long v18, v18, v10

    move-wide/from16 v0, v18

    long-to-int v14, v0

    move/from16 v18, v14

    .line 1647
    goto :goto_0

    .line 1642
    :catch_0
    move-exception v2

    .line 1644
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getvirtualkeyHeight(Landroid/app/Activity;)I
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 3164
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3165
    .local v1, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 3167
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3168
    .local v0, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3170
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public static goBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1516
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1517
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1518
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1519
    return-void
.end method

.method public static goSystemBrowser(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 3080
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3081
    .local v1, "i":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3082
    invoke-static {p0, v1}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3086
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3083
    :catch_0
    move-exception v0

    .line 3084
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Util goSystemBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static goWebShow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;

    .prologue
    .line 3032
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3033
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 3043
    :goto_0
    return-void

    .line 3036
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3039
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/ui/activity/BuildInBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3040
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3041
    const-string v1, "from"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3042
    const v1, 0x7f040005

    const v2, 0x7f040004

    invoke-static {p0, v0, v1, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_0
.end method

.method public static goWebShow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 3047
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3048
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 3059
    :goto_0
    return-void

    .line 3051
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3054
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/ui/activity/BuildInBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3055
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3056
    const-string v1, "from"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3057
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3058
    const v1, 0x7f040005

    const v2, 0x7f040004

    invoke-static {p0, v0, v1, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_0
.end method

.method public static goWebShow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "titleChange"    # Z

    .prologue
    .line 3063
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3064
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 3076
    :goto_0
    return-void

    .line 3067
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3070
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/ui/activity/BuildInBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3071
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3072
    const-string v1, "from"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3073
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3074
    const-string/jumbo v1, "title_change"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3075
    const v1, 0x7f040005

    const v2, 0x7f040004

    invoke-static {p0, v0, v1, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_0
.end method

.method public static goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isInner"    # Z

    .prologue
    .line 3010
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;ZZ)V

    .line 3011
    return-void
.end method

.method public static goWebShow(Landroid/app/Activity;Ljava/lang/String;ZZ)V
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isInner"    # Z
    .param p3, "isSetUserAgent"    # Z

    .prologue
    .line 3014
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3015
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 3029
    :goto_0
    return-void

    .line 3018
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3021
    :cond_1
    if-eqz p2, :cond_2

    .line 3022
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tudou/ui/activity/BuildInBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3023
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3024
    const-string v1, "isSetUserAgent"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3025
    const v1, 0x7f040005

    const v2, 0x7f040004

    invoke-static {p0, v0, v1, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_0

    .line 3027
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {p0, p1}, Lcom/youku/util/Util;->goSystemBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static hasExternalCacheDir()Z
    .locals 2

    .prologue
    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasInternet()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 760
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 762
    .local v2, "m":Landroid/net/ConnectivityManager;
    if-nez v2, :cond_1

    .line 763
    const-string v4, "NetWorkState"

    const-string v5, "Unavailabel"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_0
    :goto_0
    return v3

    .line 767
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 768
    .local v1, "info":[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 769
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 770
    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 771
    const-string v4, "NetWorkState"

    const-string v5, "Availabel"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    const/4 v3, 0x1

    goto :goto_0

    .line 769
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 776
    .end local v0    # "i":I
    .end local v1    # "info":[Landroid/net/NetworkInfo;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static hasSDCard()Z
    .locals 2

    .prologue
    .line 961
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    const/4 v0, 0x1

    .line 964
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 2482
    sget-boolean v0, Lcom/youku/config/Profile;->isOpenAirui:Z

    if-eqz v0, :cond_0

    .line 2484
    :try_start_0
    const-string v0, "Youku"

    const-string/jumbo v1, "util airui init AiruiAppKey = 6fe182495c9c796b"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2486
    invoke-static {p0}, Lcn/com/iresearch/mapptracker/IRMonitor;->getInstance(Landroid/content/Context;)Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    const-string v1, "6fe182495c9c796b"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/com/iresearch/mapptracker/IRMonitor;->Init(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2493
    :cond_0
    :goto_0
    return-void

    .line 2488
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 254
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 261
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 264
    :goto_1
    return v2

    .line 256
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 258
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 264
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isBackground(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3089
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3090
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 3091
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3092
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3093
    .local v2, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3094
    const-string v3, "Util"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 3099
    .end local v2    # "topActivity":Landroid/content/ComponentName;
    :goto_0
    return v3

    .line 3098
    :cond_0
    const-string v3, "Util"

    const-string v4, " false"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 3099
    goto :goto_0
.end method

.method public static isChinese(Ljava/lang/String;)Z
    .locals 4
    .param p0, "strIndex"    # Ljava/lang/String;

    .prologue
    .line 884
    const-string v2, "^[\u4e00-\u9fa5]+$"

    .line 885
    .local v2, "st2":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 886
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 887
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static final isConfirmedExit()Z
    .locals 6

    .prologue
    .line 2390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2391
    .local v0, "currentTime":J
    sget-wide v2, Lcom/youku/util/Util;->LAST_EXIT_INTENT_TIME:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2392
    const/4 v2, 0x1

    .line 2397
    :goto_0
    return v2

    .line 2394
    :cond_0
    sput-wide v0, Lcom/youku/util/Util;->LAST_EXIT_INTENT_TIME:J

    .line 2395
    const v2, 0x7f0d030c

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 2396
    const-string v2, "TAG_TUDOU"

    const-string/jumbo v3, "\u51c6\u5907\u767b\u51fa"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageRemovable()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 143
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isGoOn(Ljava/lang/String;)Z
    .locals 2
    .param p0, "Key"    # Ljava/lang/String;

    .prologue
    .line 1976
    const-wide/16 v0, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static isGoOn(Ljava/lang/String;J)Z
    .locals 1
    .param p0, "Key"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    .line 1980
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method public static isGoOn(Ljava/lang/String;JZ)Z
    .locals 7
    .param p0, "Key"    # Ljava/lang/String;
    .param p1, "time"    # J
    .param p3, "save"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1984
    sget-object v0, Lcom/youku/util/Util;->TimeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1985
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/youku/util/Util;->TimeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v2, p1

    if-lez v0, :cond_1

    .line 1986
    if-eqz p3, :cond_0

    .line 1987
    sget-object v0, Lcom/youku/util/Util;->TimeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1988
    sget-object v0, Lcom/youku/util/Util;->TimeMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v0, v1

    .line 2000
    :goto_0
    return v0

    .line 1994
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1997
    :cond_2
    if-eqz p3, :cond_3

    .line 1998
    sget-object v0, Lcom/youku/util/Util;->TimeMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v0, v1

    .line 2000
    goto :goto_0
.end method

.method public static isLandscape()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 2227
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2228
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2230
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isLandscape(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 2220
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2221
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2223
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isMD5(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 634
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 635
    const/4 v0, 0x1

    .line 636
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 3307
    const-string v2, "[0-9]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3308
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3309
    .local v0, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3310
    const/4 v2, 0x0

    .line 3312
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isWifi()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 788
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 790
    .local v0, "m":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 791
    .local v1, "n":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 793
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static issave(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 2067
    if-nez p0, :cond_1

    .line 2076
    :cond_0
    :goto_0
    return v0

    .line 2070
    :cond_1
    sget-boolean v1, Lcom/tudou/android/Youku;->isPad:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    :cond_2
    sget-boolean v1, Lcom/tudou/android/Youku;->isPad:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 2073
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static join([I)Ljava/lang/String;
    .locals 8
    .param p0, "numbers"    # [I

    .prologue
    .line 1009
    const-string v5, ""

    .line 1010
    .local v5, "result":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 1011
    const/4 v1, 0x0

    .line 1012
    .local v1, "i":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, v0, v2

    .line 1013
    .local v4, "num":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1014
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_0

    .line 1015
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1016
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1012
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1019
    .end local v0    # "arr$":[I
    .end local v1    # "i":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "num":I
    :cond_1
    return-object v5
.end method

.method public static join([J)Ljava/lang/String;
    .locals 9
    .param p0, "numbers"    # [J

    .prologue
    .line 1037
    if-nez p0, :cond_1

    .line 1038
    const/4 v6, 0x0

    .line 1047
    :cond_0
    return-object v6

    .line 1039
    :cond_1
    const-string v6, ""

    .line 1040
    .local v6, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1041
    .local v1, "i":I
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v4, v0, v2

    .line 1042
    .local v4, "num":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1043
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    if-eq v1, v7, :cond_2

    .line 1044
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1045
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1041
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static join([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 8
    .param p0, "numbers"    # [Ljava/lang/Integer;

    .prologue
    .line 1024
    const-string v5, ""

    .line 1025
    .local v5, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1026
    .local v1, "i":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1027
    .local v4, "num":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1028
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_0

    .line 1029
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1030
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1026
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1032
    .end local v4    # "num":I
    :cond_1
    return-object v5
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 974
    if-nez p0, :cond_0

    .line 975
    const/4 v6, 0x0

    .line 984
    :goto_0
    return-object v6

    .line 976
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 977
    .local v5, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 978
    .local v1, "i":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 979
    .local v4, "obj":Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 980
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_1

    .line 981
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 982
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 978
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 984
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static join([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "objs"    # [Ljava/lang/String;

    .prologue
    .line 994
    if-nez p0, :cond_0

    .line 995
    const/4 v6, 0x0

    .line 1004
    :goto_0
    return-object v6

    .line 996
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 997
    .local v5, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 998
    .local v1, "i":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 999
    .local v4, "obj":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1000
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_1

    .line 1001
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1002
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 998
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1004
    .end local v4    # "obj":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static judgeStringType(Ljava/lang/String;)I
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1175
    const-string v0, "^[\u4e00-\u9fa5]*$"

    .line 1176
    .local v0, "chineseRegex":Ljava/lang/String;
    const-string v2, "^[0-9]+$"

    .line 1177
    .local v2, "numberRegex":Ljava/lang/String;
    const-string v1, "^[0-9]+[\u4e00-\u9fa5]+"

    .line 1178
    .local v1, "numberAndChineseRegex":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return v3

    .line 1180
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1181
    const/4 v3, 0x1

    goto :goto_0

    .line 1182
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1183
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public static mapFormatStr(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3383
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3384
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 3385
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3386
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3387
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3389
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3390
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 642
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 644
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 645
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 647
    .local v5, "messageDigest":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 648
    .local v3, "hexString":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 649
    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, "h":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 651
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 652
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 648
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 654
    .end local v2    # "h":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 657
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hexString":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "messageDigest":[B
    :goto_2
    return-object v6

    .line 655
    :catch_0
    move-exception v1

    .line 656
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LoginNRegisterActivity.md5()"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 657
    const-string v6, ""

    goto :goto_2
.end method

.method public static newFormatNumber(I)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # I

    .prologue
    const v3, 0x5f5e100

    .line 563
    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    .line 564
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    :goto_0
    return-object v0

    .line 565
    :cond_0
    if-ge p0, v3, :cond_1

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v2, p0, 0x2710

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit16 v2, p0, 0x2710

    mul-int/lit16 v2, v2, 0x2710

    sub-int v2, p0, v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4e07"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 569
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x5f5e100

    div-int v2, p0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x5f5e100

    div-int v2, p0, v2

    mul-int/2addr v2, v3

    sub-int v2, p0, v2

    const v3, 0x989680

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4ebf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 575
    .end local v0    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 579
    const-string v0, ""

    goto :goto_0
.end method

.method public static newFormatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "mnumber"    # Ljava/lang/String;

    .prologue
    const v4, 0x5f5e100

    .line 592
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 593
    .local v0, "number":I
    const/16 v2, 0x2710

    if-ge v0, v2, :cond_0

    .line 594
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 609
    .end local v0    # "number":I
    :goto_0
    return-object v1

    .line 595
    .restart local v0    # "number":I
    :cond_0
    if-ge v0, v4, :cond_1

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v3, v0, 0x2710

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, v0, 0x2710

    mul-int/lit16 v3, v3, 0x2710

    sub-int v3, v0, v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u4e07"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "str":Ljava/lang/String;
    goto :goto_0

    .line 599
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x5f5e100

    div-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x5f5e100

    div-int v3, v0, v3

    mul-int/2addr v3, v4

    sub-int v3, v0, v3

    const v4, 0x989680

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u4ebf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0

    .line 605
    .end local v0    # "number":I
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 609
    const-string v1, ""

    goto :goto_0
.end method

.method public static numbersCount(Ljava/lang/String;)I
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1196
    const-string v2, "[0-9]"

    .line 1197
    .local v2, "numberRegex":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1198
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1200
    add-int/lit8 v0, v0, 0x1

    .line 1198
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1203
    :cond_1
    return v0
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 2513
    sget-boolean v0, Lcom/youku/config/Profile;->isOpenAirui:Z

    if-eqz v0, :cond_0

    .line 2515
    :try_start_0
    const-string v0, "Youku"

    const-string/jumbo v1, "util airui onPause"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    invoke-static {p0}, Lcn/com/iresearch/mapptracker/IRMonitor;->getInstance(Landroid/content/Context;)Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2522
    :cond_0
    :goto_0
    instance-of v0, p0, Lcom/tudou/ui/activity/HomePageActivity;

    if-nez v0, :cond_1

    .line 2523
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/youku/util/Util;->endSession(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2528
    :cond_1
    return-void

    .line 2517
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 2496
    sget-boolean v0, Lcom/youku/config/Profile;->isOpenAirui:Z

    if-eqz v0, :cond_0

    .line 2498
    :try_start_0
    const-string v0, "Youku"

    const-string/jumbo v1, "util airui onResume"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    invoke-static {p0}, Lcn/com/iresearch/mapptracker/IRMonitor;->getInstance(Landroid/content/Context;)Lcn/com/iresearch/mapptracker/IRMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/IRMonitor;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2503
    :cond_0
    :goto_0
    instance-of v0, p0, Lcom/tudou/ui/activity/HomePageActivity;

    if-nez v0, :cond_1

    .line 2504
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/youku/util/Util;->startSession(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    :cond_1
    return-void

    .line 2500
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static ot(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1746
    const-string v0, "Youku"

    invoke-static {v0, p0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    return-void
.end method

.method public static paste(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3158
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3160
    .local v0, "cmb":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static px2dip(F)I
    .locals 2
    .param p0, "pxValue"    # F

    .prologue
    .line 1124
    sget v0, Lcom/youku/util/Util;->scale:F

    div-float v0, p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 717
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 718
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 719
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 720
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 721
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 723
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 724
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 725
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method public static replaceBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 3292
    const-string v0, ""

    .line 3293
    .local v0, "dest":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 3294
    const-string v3, "\\s*|\t|\r|\n"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 3295
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3296
    .local v1, "m":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3298
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :cond_0
    return-object v0
.end method

.method public static setClipData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 3461
    const-string v2, "clipboard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 3462
    .local v1, "cmb":Landroid/content/ClipboardManager;
    const-string/jumbo v2, "text"

    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 3463
    .local v0, "clipData":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 3464
    return-void
.end method

.method public static setStatusBarTlags(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x4000000

    .line 3249
    sget-boolean v0, Lcom/tudou/android/Youku;->openStatusBar:Z

    if-nez v0, :cond_1

    .line 3257
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 3253
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    sget v0, Lcom/tudou/android/Youku;->statusBarHeight:I

    if-lez v0, :cond_0

    .line 3254
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public static setViewRelativeLayout(Landroid/view/View;II)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1955
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1957
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 1958
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1959
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1963
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1964
    return-void

    .line 1961
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0
.end method

.method public static setViewRelativeLayout(Landroid/view/View;IIIIII)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "l"    # I
    .param p4, "r"    # I
    .param p5, "t"    # I
    .param p6, "b"    # I

    .prologue
    .line 1932
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1934
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 1935
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1936
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1940
    :goto_0
    invoke-virtual {v0, p3, p5, p4, p6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1941
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1942
    return-void

    .line 1938
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0
.end method

.method public static showCurTrack(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2852
    const-string/jumbo v0, "test"

    invoke-static {v0, p0}, Lcom/youku/util/Util;->showCurTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    return-void
.end method

.method public static showCurTrack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    return-void
.end method

.method public static showHeight(Landroid/app/Activity;)V
    .locals 14
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 3174
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3175
    .local v6, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3177
    iget v10, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3178
    .local v10, "width":I
    iget v5, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3179
    .local v5, "height":I
    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .line 3180
    .local v2, "density":F
    iget v3, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3182
    .local v3, "densityDpi":I
    const-string/jumbo v11, "test1"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "height = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3184
    .local v4, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3185
    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 3186
    .local v9, "statusBarHeight":I
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 3187
    .local v8, "statusBarBottom":I
    const-string/jumbo v11, "test1"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WindowVisible top = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bottom = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3190
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3193
    .local v1, "appmetric":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3195
    .local v0, "appheight":I
    const-string/jumbo v11, "test1"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appheight = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3197
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3198
    .local v7, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 3200
    const-string/jumbo v11, "test1"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "outMetrics height = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    return-void
.end method

.method public static showSoftInput(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 2087
    const-wide/16 v0, 0x1f4

    invoke-static {p0, p1, v0, v1}, Lcom/youku/util/Util;->showSoftInput(Landroid/app/Activity;Landroid/view/View;J)V

    .line 2088
    return-void
.end method

.method public static showSoftInput(Landroid/app/Activity;Landroid/view/View;J)V
    .locals 2
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "time"    # J

    .prologue
    .line 2110
    new-instance v0, Lcom/youku/util/Util$10;

    invoke-direct {v0, p0, p1}, Lcom/youku/util/Util$10;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 2128
    .local v0, "handler":Landroid/os/Handler;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2129
    return-void
.end method

.method public static showSureDialogShow(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "mes"    # Ljava/lang/String;

    .prologue
    .line 3136
    new-instance v0, Lcom/youku/widget/TudouDialog;

    sget-object v1, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v0, p0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 3138
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    invoke-virtual {v0, p1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 3139
    const v1, 0x7f0d00c9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/youku/util/Util$12;

    invoke-direct {v2, v0}, Lcom/youku/util/Util$12;-><init>(Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 3147
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 3148
    return-void
.end method

.method public static showTips(I)V
    .locals 1
    .param p0, "stringId"    # I

    .prologue
    .line 1272
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 1274
    return-void
.end method

.method public static showTips(IJ)V
    .locals 4
    .param p0, "stringId"    # I
    .param p1, "threshold"    # J

    .prologue
    .line 1282
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;J)V

    .line 1284
    return-void
.end method

.method public static showTips(Ljava/lang/String;)V
    .locals 2
    .param p0, "tipsString"    # Ljava/lang/String;

    .prologue
    .line 1277
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;J)V

    .line 1279
    return-void
.end method

.method public static showTips(Ljava/lang/String;J)V
    .locals 1
    .param p0, "tipsString"    # Ljava/lang/String;
    .param p1, "threshold"    # J

    .prologue
    .line 1288
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;JZ)V

    .line 1289
    return-void
.end method

.method public static showTips(Ljava/lang/String;JZ)V
    .locals 5
    .param p0, "tipsString"    # Ljava/lang/String;
    .param p1, "threshold"    # J
    .param p3, "force"    # Z

    .prologue
    .line 1292
    const-string v2, "Toast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showTips : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Util;->showCurTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1305
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/util/Util;->isBackground(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p3, :cond_0

    .line 1297
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Youku.showTips()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;)V

    .line 1298
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1299
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1301
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "tipsString"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string/jumbo v2, "threshold"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1303
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1304
    sget-object v2, Lcom/youku/util/Util;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static showTipsImg(I)V
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 1308
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/util/Util;->showTipsImg(Ljava/lang/String;)V

    .line 1309
    return-void
.end method

.method public static showTipsImg(Ljava/lang/String;)V
    .locals 5
    .param p0, "tipsString"    # Ljava/lang/String;

    .prologue
    .line 1313
    const-string v2, "Toast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showTips : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Util;->showCurTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1316
    :cond_1
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/util/Util;->isBackground(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Youku.showTips()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;)V

    .line 1319
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1320
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1321
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1322
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "tipsString"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1324
    sget-object v2, Lcom/youku/util/Util;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static showTipsShort(Ljava/lang/String;J)V
    .locals 5
    .param p0, "tipsString"    # Ljava/lang/String;
    .param p1, "threshold"    # J

    .prologue
    .line 1329
    const-string v2, "Toast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showTipsShort : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Util;->showCurTrack(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1332
    :cond_1
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/util/Util;->isBackground(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Youku.showTips()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;)V

    .line 1335
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1336
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1337
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1338
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "tipsString"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const-string/jumbo v2, "threshold"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1340
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1341
    sget-object v2, Lcom/youku/util/Util;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static showToast(Ljava/lang/Object;)V
    .locals 5
    .param p0, "msgString"    # Ljava/lang/Object;

    .prologue
    .line 1225
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/util/Util;->isBackground(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1229
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1230
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1231
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "ToastMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1233
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1234
    sget-object v2, Lcom/youku/util/Util;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static showsStatusBarView(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 3227
    sget-boolean v1, Lcom/tudou/android/Youku;->openStatusBar:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/tudou/android/Youku;->statusBarHeight:I

    if-nez v1, :cond_1

    .line 3228
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3239
    :goto_0
    return-void

    .line 3233
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3234
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3235
    sget v1, Lcom/tudou/android/Youku;->statusBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3236
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3238
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static sp2px(FI)F
    .locals 2
    .param p0, "spValue"    # F
    .param p1, "type"    # I

    .prologue
    .line 1157
    packed-switch p1, :pswitch_data_0

    .line 1163
    sget v0, Lcom/youku/util/Util;->scaledDensity:F

    mul-float/2addr v0, p0

    :goto_0
    return v0

    .line 1159
    :pswitch_0
    sget v0, Lcom/youku/util/Util;->scaledDensity:F

    mul-float/2addr v0, p0

    goto :goto_0

    .line 1161
    :pswitch_1
    sget v0, Lcom/youku/util/Util;->scaledDensity:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41900000    # 18.0f

    div-float/2addr v0, v1

    goto :goto_0

    .line 1157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static startSession(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "userID"    # Ljava/lang/String;

    .prologue
    .line 2788
    sget-object v1, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2789
    .local v0, "pagename":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2790
    move-object v0, p1

    .line 2792
    :cond_0
    invoke-static {p0, v0, p2}, Lcom/youku/analytics/AnalyticsAgent;->startSession(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    return-void
.end method

.method public static strFormatMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 3362
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 3363
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, ";"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3364
    .local v1, "data":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    .line 3365
    .local v4, "item":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3367
    .local v2, "formatValue":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v5, v2, v9

    .line 3368
    .local v5, "key":Ljava/lang/String;
    array-length v9, v2

    if-ne v9, v10, :cond_0

    .line 3369
    const-string v8, ""

    .line 3372
    .local v8, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3364
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3371
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    aget-object v8, v2, v10

    .restart local v8    # "value":Ljava/lang/String;
    goto :goto_1

    .line 3374
    .end local v2    # "formatValue":[Ljava/lang/String;
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    return-object v7
.end method

.method public static string2int([Ljava/lang/String;)[I
    .locals 8
    .param p0, "numbers"    # [Ljava/lang/String;

    .prologue
    .line 1057
    array-length v7, p0

    new-array v6, v7, [I

    .line 1058
    .local v6, "nums":[I
    const/4 v2, 0x0

    .line 1059
    .local v2, "i":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 1061
    .local v5, "num":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 1059
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1062
    :catch_0
    move-exception v1

    .line 1063
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    aput v7, v6, v2

    goto :goto_1

    .line 1067
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "num":Ljava/lang/String;
    :cond_0
    return-object v6
.end method

.method public static string2long([Ljava/lang/String;)[J
    .locals 10
    .param p0, "numbers"    # [Ljava/lang/String;

    .prologue
    .line 1077
    array-length v7, p0

    new-array v6, v7, [J

    .line 1078
    .local v6, "nums":[J
    const/4 v2, 0x0

    .line 1079
    .local v2, "i":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 1081
    .local v5, "num":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 1079
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1082
    :catch_0
    move-exception v1

    .line 1083
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v8, 0x0

    aput-wide v8, v6, v2

    goto :goto_1

    .line 1087
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "num":Ljava/lang/String;
    :cond_0
    return-object v6
.end method

.method public static timeConversion(J)Ljava/lang/String;
    .locals 8
    .param p0, "lastPlayTime"    # J

    .prologue
    .line 2307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long v2, v4, p0

    .line 2309
    .local v2, "timeDifference":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 2310
    const-string v1, ""

    .line 2338
    :goto_0
    return-object v1

    .line 2312
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2313
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-wide/32 v4, 0x1da9c00

    div-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 2315
    const-wide/32 v4, 0x1da9c00

    div-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2316
    const-string/jumbo v1, "\u5e74\u524d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2338
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2317
    :cond_1
    const-wide/32 v4, 0x278d00

    div-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 2319
    const-wide/32 v4, 0x278d00

    div-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2320
    const-string/jumbo v1, "\u6708\u524d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2321
    :cond_2
    const-wide/32 v4, 0x15180

    div-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 2323
    const-wide/32 v4, 0x15180

    div-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2324
    const-string/jumbo v1, "\u5929\u524d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2325
    :cond_3
    const-wide/16 v4, 0xe10

    div-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    .line 2327
    const-wide/16 v4, 0xe10

    div-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2328
    const-string/jumbo v1, "\u5c0f\u65f6\u524d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2329
    :cond_4
    const-wide/16 v4, 0x3c

    div-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    .line 2331
    const-wide/16 v4, 0x3c

    div-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2332
    const-string/jumbo v1, "\u5206\u949f\u524d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2335
    :cond_5
    const-string/jumbo v1, "\u521a\u521a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 28
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 345
    .local v23, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 348
    .local v14, "height":I
    move/from16 v0, v23

    if-gt v0, v14, :cond_0

    .line 349
    div-int/lit8 v24, v23, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    .line 350
    .local v20, "roundPx":F
    const/16 v22, 0x0

    .line 351
    .local v22, "top":F
    move/from16 v0, v23

    int-to-float v5, v0

    .line 352
    .local v5, "bottom":F
    const/4 v15, 0x0

    .line 353
    .local v15, "left":F
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v19, v0

    .line 354
    .local v19, "right":F
    move/from16 v14, v23

    .line 355
    const/4 v11, 0x0

    .line 356
    .local v11, "dst_left":F
    const/4 v13, 0x0

    .line 357
    .local v13, "dst_top":F
    move/from16 v0, v23

    int-to-float v12, v0

    .line 358
    .local v12, "dst_right":F
    move/from16 v0, v23

    int-to-float v10, v0

    .line 373
    .local v10, "dst_bottom":F
    :goto_0
    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 374
    .local v16, "output":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 376
    .local v6, "canvas":Landroid/graphics/Canvas;
    const v8, -0xbdbdbe

    .line 377
    .local v8, "color":I
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 378
    .local v17, "paint":Landroid/graphics/Paint;
    new-instance v21, Landroid/graphics/Rect;

    float-to-int v0, v15

    move/from16 v24, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v26, v0

    float-to-int v0, v5

    move/from16 v27, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 380
    .local v21, "src":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    float-to-int v0, v11

    move/from16 v24, v0

    float-to-int v0, v13

    move/from16 v25, v0

    float-to-int v0, v12

    move/from16 v26, v0

    float-to-int v0, v10

    move/from16 v27, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 382
    .local v9, "dst":Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/RectF;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 384
    .local v18, "rectF":Landroid/graphics/RectF;
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 386
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 387
    const v24, -0xbdbdbe

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v20

    move-object/from16 v3, v17

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 390
    new-instance v24, Landroid/graphics/PorterDuffXfermode;

    sget-object v25, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v24 .. v25}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v6, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 392
    return-object v16

    .line 360
    .end local v5    # "bottom":F
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "color":I
    .end local v9    # "dst":Landroid/graphics/Rect;
    .end local v10    # "dst_bottom":F
    .end local v11    # "dst_left":F
    .end local v12    # "dst_right":F
    .end local v13    # "dst_top":F
    .end local v15    # "left":F
    .end local v16    # "output":Landroid/graphics/Bitmap;
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v18    # "rectF":Landroid/graphics/RectF;
    .end local v19    # "right":F
    .end local v20    # "roundPx":F
    .end local v21    # "src":Landroid/graphics/Rect;
    .end local v22    # "top":F
    :cond_0
    div-int/lit8 v24, v14, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    .line 361
    .restart local v20    # "roundPx":F
    sub-int v24, v23, v14

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v7, v0

    .line 362
    .local v7, "clip":F
    move v15, v7

    .line 363
    .restart local v15    # "left":F
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v19, v24, v7

    .line 364
    .restart local v19    # "right":F
    const/16 v22, 0x0

    .line 365
    .restart local v22    # "top":F
    int-to-float v5, v14

    .line 366
    .restart local v5    # "bottom":F
    move/from16 v23, v14

    .line 367
    const/4 v11, 0x0

    .line 368
    .restart local v11    # "dst_left":F
    const/4 v13, 0x0

    .line 369
    .restart local v13    # "dst_top":F
    int-to-float v12, v14

    .line 370
    .restart local v12    # "dst_right":F
    int-to-float v10, v14

    .restart local v10    # "dst_bottom":F
    goto/16 :goto_0
.end method

.method public static toRoundBitmapByline(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 30
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    .line 277
    .local v25, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 278
    .local v14, "height":I
    const/16 v16, 0x8

    .line 281
    .local v16, "lenght":I
    move/from16 v0, v25

    if-gt v0, v14, :cond_0

    .line 282
    div-int/lit8 v26, v25, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v22, v0

    .line 283
    .local v22, "roundPx":F
    const/16 v24, 0x0

    .line 284
    .local v24, "top":F
    move/from16 v0, v25

    int-to-float v5, v0

    .line 285
    .local v5, "bottom":F
    const/4 v15, 0x0

    .line 286
    .local v15, "left":F
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v21, v0

    .line 287
    .local v21, "right":F
    move/from16 v14, v25

    .line 288
    const/4 v11, 0x0

    .line 289
    .local v11, "dst_left":F
    const/4 v13, 0x0

    .line 290
    .local v13, "dst_top":F
    move/from16 v0, v25

    int-to-float v12, v0

    .line 291
    .local v12, "dst_right":F
    move/from16 v0, v25

    int-to-float v10, v0

    .line 306
    .local v10, "dst_bottom":F
    :goto_0
    add-int/lit8 v26, v25, 0x8

    add-int/lit8 v27, v14, 0x8

    sget-object v28, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v26 .. v28}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 308
    .local v17, "output":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 310
    .local v6, "canvas":Landroid/graphics/Canvas;
    const v8, -0xbdbdbe

    .line 311
    .local v8, "color":I
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 312
    .local v18, "paint":Landroid/graphics/Paint;
    new-instance v23, Landroid/graphics/Rect;

    float-to-int v0, v15

    move/from16 v26, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v28, v0

    float-to-int v0, v5

    move/from16 v29, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 314
    .local v23, "src":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    float-to-int v0, v11

    move/from16 v26, v0

    float-to-int v0, v13

    move/from16 v27, v0

    float-to-int v0, v12

    move/from16 v28, v0

    float-to-int v0, v10

    move/from16 v29, v0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 316
    .local v9, "dst":Landroid/graphics/Rect;
    const/16 v26, 0x4

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 317
    new-instance v20, Landroid/graphics/RectF;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 319
    .local v20, "rectF":Landroid/graphics/RectF;
    const/16 v26, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 321
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 322
    const v26, -0xbdbdbe

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v22

    move-object/from16 v3, v18

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 325
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 326
    .local v19, "paint1":Landroid/graphics/Paint;
    const v26, -0x8b00

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    new-instance v26, Landroid/graphics/PorterDuffXfermode;

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v26 .. v27}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 330
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-int v28, v25, v16

    add-int/lit8 v28, v28, 0x5

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v19

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v6, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 334
    return-object v17

    .line 293
    .end local v5    # "bottom":F
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "color":I
    .end local v9    # "dst":Landroid/graphics/Rect;
    .end local v10    # "dst_bottom":F
    .end local v11    # "dst_left":F
    .end local v12    # "dst_right":F
    .end local v13    # "dst_top":F
    .end local v15    # "left":F
    .end local v17    # "output":Landroid/graphics/Bitmap;
    .end local v18    # "paint":Landroid/graphics/Paint;
    .end local v19    # "paint1":Landroid/graphics/Paint;
    .end local v20    # "rectF":Landroid/graphics/RectF;
    .end local v21    # "right":F
    .end local v22    # "roundPx":F
    .end local v23    # "src":Landroid/graphics/Rect;
    .end local v24    # "top":F
    :cond_0
    div-int/lit8 v26, v14, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v22, v0

    .line 294
    .restart local v22    # "roundPx":F
    sub-int v26, v25, v14

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v7, v0

    .line 295
    .local v7, "clip":F
    move v15, v7

    .line 296
    .restart local v15    # "left":F
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v21, v26, v7

    .line 297
    .restart local v21    # "right":F
    const/16 v24, 0x0

    .line 298
    .restart local v24    # "top":F
    int-to-float v5, v14

    .line 299
    .restart local v5    # "bottom":F
    move/from16 v25, v14

    .line 300
    const/4 v11, 0x0

    .line 301
    .restart local v11    # "dst_left":F
    const/4 v13, 0x0

    .line 302
    .restart local v13    # "dst_top":F
    int-to-float v12, v14

    .line 303
    .restart local v12    # "dst_right":F
    int-to-float v10, v14

    .restart local v10    # "dst_bottom":F
    goto/16 :goto_0
.end method

.method public static trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "userid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2557
    .local p5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2558
    .local v2, "pagename":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2559
    move-object v2, p2

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2561
    invoke-static/range {v0 .. v5}, Lcom/youku/analytics/AnalyticsAgent;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2567
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 2542
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2543
    .local v2, "pagename":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2544
    move-object v2, p1

    .line 2546
    :cond_0
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/youku/analytics/AnalyticsAgent;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2552
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "extendValue"    # Ljava/lang/String;

    .prologue
    .line 2571
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2572
    .local v2, "pagename":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2573
    move-object v2, p1

    .line 2575
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2576
    .local v5, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "refercode"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2577
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/youku/analytics/AnalyticsAgent;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2583
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2597
    .local p3, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2598
    .local v2, "pagename":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2599
    move-object v2, p1

    .line 2601
    :cond_0
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/youku/analytics/AnalyticsAgent;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2607
    return-void
.end method

.method public static trackExtendSokuAccessEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/youku/vo/SokuAccess;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p4, "access"    # Lcom/youku/vo/SokuAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/youku/vo/SokuAccess;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2742
    .local p3, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2743
    .local v2, "pagename":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2744
    move-object v2, p1

    .line 2746
    :cond_0
    const-string v0, "log"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->log:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2747
    const-string/jumbo v0, "site"

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "2"

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2748
    const-string v0, "aaid"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->aaid:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2749
    const-string v0, "brand"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->brand:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2750
    const-string v0, "btype"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->btype:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2751
    const-string v0, "dim"

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "phone"

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2752
    const-string v0, "deviceid"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->deviceid:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2753
    const-string v0, "mac"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->mac:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2754
    const-string v0, "guid"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->guid:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    const-string/jumbo v0, "uid"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2756
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2757
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2758
    const-string v0, "network"

    const-string/jumbo v1, "wifi"

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2764
    :cond_1
    :goto_0
    const-string v0, "os"

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android"

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2765
    const-string v0, "os_ver"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->os_ver:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2766
    const-string v0, "pg"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->pg:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2767
    const-string v0, "pz"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->pz:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2768
    const-string v0, "k"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->k:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2769
    const-string/jumbo v0, "sh"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->sh:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2770
    const-string v0, "ds"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->ds:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2771
    const-string/jumbo v0, "vs"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->vs:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2772
    const-string/jumbo v0, "ver"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->ver:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2773
    iget-object v0, p4, Lcom/youku/vo/SokuAccess;->filter:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2774
    const-string v0, "filter"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->filter:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2775
    :cond_2
    iget-object v0, p4, Lcom/youku/vo/SokuAccess;->seq:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2776
    const-string/jumbo v0, "seq"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->seq:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2777
    :cond_3
    const-string v0, "kref"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->kref:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2779
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/youku/analytics/AnalyticsAgent;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2785
    return-void

    .line 2760
    :cond_4
    const-string v0, "network"

    const-string v1, "4g/3g/2g"

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2761
    const-string v0, "operator"

    iget-object v1, p4, Lcom/youku/vo/SokuAccess;->operator:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static trackExtendSokuClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/youku/vo/SokuClick;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p4, "click"    # Lcom/youku/vo/SokuClick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/youku/vo/SokuClick;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2653
    .local p3, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2654
    .local v2, "pagename":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2655
    move-object v2, p1

    .line 2658
    :cond_0
    const-string v0, "log"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->log:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2659
    const-string/jumbo v0, "site"

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "2"

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2660
    const-string v0, "aaid"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->aaid:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2661
    const-string v0, "guid"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->guid:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2662
    const-string/jumbo v0, "uid"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2663
    const-string v0, "ds"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->ds:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2664
    const-string/jumbo v0, "vs"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->vs:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2665
    const-string v0, "pg"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->pg:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2666
    const-string/jumbo v0, "ver"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->ver:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2667
    const-string v0, "k"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->k:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2668
    iget-object v0, p4, Lcom/youku/vo/SokuClick;->seq:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2669
    const-string/jumbo v0, "seq"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->seq:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2670
    :cond_1
    iget-object v0, p4, Lcom/youku/vo/SokuClick;->filter:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2671
    const-string v0, "filter"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->filter:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2672
    :cond_2
    const-string/jumbo v0, "type"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->type:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2673
    const-string v0, "ct"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->ct:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    const-string v0, "pos"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->pos:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2675
    const-string v0, "pid"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->pid:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2676
    const-string v0, "pname"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->pname:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2677
    const-string/jumbo v0, "vid"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->vid:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2678
    const-string v0, "cid"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->cid:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2679
    const-string/jumbo v0, "url"

    iget-object v1, p4, Lcom/youku/vo/SokuClick;->url:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2681
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/youku/analytics/AnalyticsAgent;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2687
    return-void
.end method

.method public static trackExtendSokuKuboxEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/youku/vo/SokuKubox;I)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p4, "kubox"    # Lcom/youku/vo/SokuKubox;
    .param p5, "searchTab"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/youku/vo/SokuKubox;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2702
    .local p3, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/youku/config/Profile;->trackmap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2703
    .local v2, "pagename":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2704
    move-object v2, p1

    .line 2706
    :cond_0
    packed-switch p5, :pswitch_data_0

    .line 2709
    const-string v0, "31"

    iput-object v0, p4, Lcom/youku/vo/SokuKubox;->log:Ljava/lang/String;

    .line 2715
    :goto_0
    const-string v0, "log"

    iget-object v1, p4, Lcom/youku/vo/SokuKubox;->log:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2716
    const-string/jumbo v0, "site"

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "2"

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2717
    const-string v0, "pos"

    iget-object v1, p4, Lcom/youku/vo/SokuKubox;->pos:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2718
    const-string v0, "ki"

    iget-object v1, p4, Lcom/youku/vo/SokuKubox;->ki:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2719
    const-string v0, "k"

    iget-object v1, p4, Lcom/youku/vo/SokuKubox;->k:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2720
    const-string v0, "ok"

    iget-object v1, p4, Lcom/youku/vo/SokuKubox;->ok:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2722
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/youku/analytics/AnalyticsAgent;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2728
    return-void

    .line 2712
    :pswitch_0
    const-string v0, "32"

    iput-object v0, p4, Lcom/youku/vo/SokuKubox;->log:Ljava/lang/String;

    goto :goto_0

    .line 2706
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .param p0, "refercode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 2637
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    move-object v2, v1

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/youku/analytics/AnalyticsAgent;->pageClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2639
    return-void
.end method

.method public static value2px(F)I
    .locals 2
    .param p0, "dipValue"    # F

    .prologue
    .line 1114
    sget v0, Lcom/youku/util/Util;->scale:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
