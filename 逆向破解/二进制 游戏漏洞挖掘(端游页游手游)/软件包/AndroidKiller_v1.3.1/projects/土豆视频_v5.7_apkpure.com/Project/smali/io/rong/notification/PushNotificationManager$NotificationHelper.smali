.class Lio/rong/notification/PushNotificationManager$NotificationHelper;
.super Ljava/lang/Object;
.source "PushNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/notification/PushNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/notification/PushNotificationManager;


# direct methods
.method private constructor <init>(Lio/rong/notification/PushNotificationManager;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lio/rong/notification/PushNotificationManager$NotificationHelper;->this$0:Lio/rong/notification/PushNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/notification/PushNotificationManager;Lio/rong/notification/PushNotificationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/notification/PushNotificationManager;
    .param p2, "x1"    # Lio/rong/notification/PushNotificationManager$1;

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lio/rong/notification/PushNotificationManager$NotificationHelper;-><init>(Lio/rong/notification/PushNotificationManager;)V

    return-void
.end method

.method private getNotificationIcon(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    .line 312
    .local v1, "isLollipop":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "notification_small_icon"

    const-string v4, "drawable"

    iget-object v5, p0, Lio/rong/notification/PushNotificationManager$NotificationHelper;->this$0:Lio/rong/notification/PushNotificationManager;

    invoke-static {v5}, Lio/rong/notification/PushNotificationManager;->access$200(Lio/rong/notification/PushNotificationManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 313
    .local v0, "id":I
    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    .line 316
    .end local v0    # "id":I
    :goto_1
    return v0

    .line 311
    .end local v1    # "isLollipop":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 316
    .restart local v0    # "id":I
    .restart local v1    # "isLollipop":Z
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    goto :goto_1
.end method


# virtual methods
.method build(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)Landroid/app/Notification;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "isKeepSilent"    # Z

    .prologue
    .line 290
    iget-object v3, p0, Lio/rong/notification/PushNotificationManager$NotificationHelper;->this$0:Lio/rong/notification/PushNotificationManager;

    invoke-static {v3}, Lio/rong/notification/PushNotificationManager;->access$100(Lio/rong/notification/PushNotificationManager;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    .local v0, "appIcon":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lio/rong/notification/PushNotificationManager$NotificationHelper;->this$0:Lio/rong/notification/PushNotificationManager;

    invoke-static {v3}, Lio/rong/notification/PushNotificationManager;->access$200(Lio/rong/notification/PushNotificationManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lio/rong/notification/PushNotificationManager$NotificationHelper;->this$0:Lio/rong/notification/PushNotificationManager;

    invoke-static {v4}, Lio/rong/notification/PushNotificationManager;->access$200(Lio/rong/notification/PushNotificationManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "rc_notification_ticker_text"

    const-string/jumbo v6, "string"

    iget-object v7, p0, Lio/rong/notification/PushNotificationManager$NotificationHelper;->this$0:Lio/rong/notification/PushNotificationManager;

    invoke-static {v7}, Lio/rong/notification/PushNotificationManager;->access$200(Lio/rong/notification/PushNotificationManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "tickerText":Ljava/lang/String;
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 294
    invoke-direct {p0, p1}, Lio/rong/notification/PushNotificationManager$NotificationHelper;->getNotificationIcon(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 295
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 296
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 297
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 298
    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 299
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 301
    if-eqz p5, :cond_0

    .line 302
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 307
    :goto_0
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    return-object v3

    .line 304
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0
.end method
