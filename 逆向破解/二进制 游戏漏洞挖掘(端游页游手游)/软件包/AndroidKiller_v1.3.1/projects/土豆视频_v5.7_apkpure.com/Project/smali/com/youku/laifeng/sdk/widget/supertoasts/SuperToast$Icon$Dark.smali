.class public Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;
.super Ljava/lang/Object;
.source "SuperToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dark"
.end annotation


# static fields
.field public static final EDIT:I

.field public static final EXIT:I

.field public static final INFO:I

.field public static final REDO:I

.field public static final REFRESH:I

.field public static final SAVE:I

.field public static final SHARE:I

.field public static final UNDO:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_dark_edit"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->EDIT:I

    .line 111
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_dark_exit"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->EXIT:I

    .line 112
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_dark_info"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->INFO:I

    .line 113
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_dark_redo"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->REDO:I

    .line 114
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_dark_refresh"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->REFRESH:I

    .line 115
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_dark_save"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->SAVE:I

    .line 116
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_dark_share"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->SHARE:I

    .line 117
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_dark_undo"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
