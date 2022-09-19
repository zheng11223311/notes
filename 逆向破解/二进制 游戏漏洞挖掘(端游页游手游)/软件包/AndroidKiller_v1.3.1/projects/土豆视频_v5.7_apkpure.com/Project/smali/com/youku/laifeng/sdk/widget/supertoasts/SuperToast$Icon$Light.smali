.class public Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Light;
.super Ljava/lang/Object;
.source "SuperToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Light"
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
    .line 126
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_light_edit"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Light;->EDIT:I

    .line 127
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_light_exit"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Light;->EXIT:I

    .line 128
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_light_info"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Light;->INFO:I

    .line 129
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_light_red"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Light;->REDO:I

    .line 130
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_light_refresh"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Light;->REFRESH:I

    .line 131
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_light_save"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Light;->SAVE:I

    .line 132
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_light_share"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Light;->SHARE:I

    .line 133
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "icon_light_undo"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Light;->UNDO:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
