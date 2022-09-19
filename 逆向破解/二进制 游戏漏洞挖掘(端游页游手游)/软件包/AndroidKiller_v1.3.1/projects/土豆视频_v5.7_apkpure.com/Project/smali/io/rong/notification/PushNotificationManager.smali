.class public Lio/rong/notification/PushNotificationManager;
.super Ljava/lang/Object;
.source "PushNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/notification/PushNotificationManager$1;,
        Lio/rong/notification/PushNotificationManager$NotificationHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PushNotificationManager"

.field private static sS:Lio/rong/notification/PushNotificationManager;


# instance fields
.field private final NEW_NOTIFICATION_LEVEL:I

.field private contactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/notification/PushNotificationContact;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final notificationId:I

.field private pushNotificationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lio/rong/notification/PushNotificationManager;

    invoke-direct {v0}, Lio/rong/notification/PushNotificationManager;-><init>()V

    sput-object v0, Lio/rong/notification/PushNotificationManager;->sS:Lio/rong/notification/PushNotificationManager;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0xb

    iput v0, p0, Lio/rong/notification/PushNotificationManager;->NEW_NOTIFICATION_LEVEL:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/notification/PushNotificationManager;->notificationId:I

    .line 26
    const/16 v0, 0x3e8

    iput v0, p0, Lio/rong/notification/PushNotificationManager;->pushNotificationId:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lio/rong/notification/PushNotificationManager;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lio/rong/notification/PushNotificationManager;

    .prologue
    .line 22
    invoke-direct {p0}, Lio/rong/notification/PushNotificationManager;->getAppIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/notification/PushNotificationManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lio/rong/notification/PushNotificationManager;

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildPendingIntent(Lio/rong/notification/PushNotificationMessage;Z)Landroid/app/PendingIntent;
    .locals 8
    .param p1, "msg"    # Lio/rong/notification/PushNotificationMessage;
    .param p2, "fromPush"    # Z

    .prologue
    .line 262
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rong://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 269
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-object v5, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 270
    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    .line 272
    .local v1, "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    const-string v5, "conversation"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v6, "targetId"

    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string/jumbo v6, "title"

    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getTargetUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 279
    .end local v1    # "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    :goto_0
    if-eqz p2, :cond_0

    .line 280
    const-string v5, "push"

    const-string/jumbo v6, "true"

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 282
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 283
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 284
    iget-object v5, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 285
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    return-object v3

    .line 276
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v5, "conversationlist"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method private getAppIcon()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 256
    iget-object v2, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 257
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    .local v0, "appIcon":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private getCurrentFormatTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lio/rong/notification/PushNotificationManager;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lio/rong/notification/PushNotificationManager;->sS:Lio/rong/notification/PushNotificationManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lio/rong/notification/PushNotificationManager;

    invoke-direct {v0}, Lio/rong/notification/PushNotificationManager;-><init>()V

    sput-object v0, Lio/rong/notification/PushNotificationManager;->sS:Lio/rong/notification/PushNotificationManager;

    .line 46
    :cond_0
    sget-object v0, Lio/rong/notification/PushNotificationManager;->sS:Lio/rong/notification/PushNotificationManager;

    return-object v0
.end method

.method private getNotificationContent()Ljava/lang/String;
    .locals 15

    .prologue
    .line 214
    const/4 v8, 0x0

    .line 215
    .local v8, "rc_notification_new_msg":Ljava/lang/String;
    const/4 v9, 0x0

    .line 218
    .local v9, "rc_notification_new_plural_msg":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "rc_notification_new_msg"

    const-string/jumbo v13, "string"

    iget-object v14, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 219
    iget-object v10, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "rc_notification_new_plural_msg"

    const-string/jumbo v13, "string"

    iget-object v14, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 224
    :goto_0
    const-string v10, "push notification content"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "contact size is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v10, v11}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v10, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 226
    const/4 v6, 0x0

    .line 227
    .local v6, "index":I
    iget-object v10, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/notification/PushNotificationContact;

    .line 228
    .local v1, "contact":Lio/rong/notification/PushNotificationContact;
    invoke-virtual {v1}, Lio/rong/notification/PushNotificationContact;->getMessageList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    .line 230
    .local v7, "nMsg":I
    const-string v10, "push notification content"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nMsg is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v10, v11}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v10, 0x1

    if-ne v7, v10, :cond_0

    .line 232
    invoke-virtual {v1}, Lio/rong/notification/PushNotificationContact;->getMessageList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 245
    .end local v1    # "contact":Lio/rong/notification/PushNotificationContact;
    .end local v6    # "index":I
    .end local v7    # "nMsg":I
    .local v2, "content":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 220
    .end local v2    # "content":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 221
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "contact":Lio/rong/notification/PushNotificationContact;
    .restart local v6    # "index":I
    .restart local v7    # "nMsg":I
    :cond_0
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Lio/rong/notification/PushNotificationContact;->getUserName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "content":Ljava/lang/String;
    goto :goto_1

    .line 237
    .end local v1    # "contact":Lio/rong/notification/PushNotificationContact;
    .end local v2    # "content":Ljava/lang/String;
    .end local v6    # "index":I
    .end local v7    # "nMsg":I
    :cond_1
    const/4 v3, 0x0

    .line 238
    .local v3, "count":I
    iget-object v10, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/notification/PushNotificationContact;

    .line 239
    .local v0, "c":Lio/rong/notification/PushNotificationContact;
    invoke-virtual {v0}, Lio/rong/notification/PushNotificationContact;->getMessageList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v3, v10

    .line 240
    goto :goto_2

    .line 242
    .end local v0    # "c":Lio/rong/notification/PushNotificationContact;
    :cond_2
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "content":Ljava/lang/String;
    goto :goto_1
.end method

.method private getNotificationTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    iget-object v1, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 205
    iget-object v1, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/notification/PushNotificationContact;

    invoke-virtual {v1}, Lio/rong/notification/PushNotificationContact;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "title":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 207
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "title":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    iput-object p1, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public onReceiveMessage(Lio/rong/notification/PushNotificationMessage;Z)V
    .locals 3
    .param p1, "message"    # Lio/rong/notification/PushNotificationMessage;
    .param p2, "isKeepSilent"    # Z

    .prologue
    .line 51
    const-string v0, "onReceiveMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getTargetUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0, p1}, Lio/rong/notification/PushNotificationManager;->storeMsgToCache(Lio/rong/notification/PushNotificationMessage;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/rong/notification/PushNotificationManager;->sendNotification(Lio/rong/notification/PushNotificationMessage;ZZ)V

    .line 54
    return-void
.end method

.method public onReceivePush(Lio/rong/notification/PushNotificationMessage;)V
    .locals 3
    .param p1, "message"    # Lio/rong/notification/PushNotificationMessage;

    .prologue
    .line 57
    const-string v0, "onReceivePush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getTargetUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->PUSH_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getPushId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lio/rong/notification/PushNotificationManager;->sendPushNotification(Lio/rong/notification/PushNotificationMessage;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0, p1}, Lio/rong/notification/PushNotificationManager;->storeMsgToCache(Lio/rong/notification/PushNotificationMessage;)V

    .line 65
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lio/rong/notification/PushNotificationManager;->sendNotification(Lio/rong/notification/PushNotificationMessage;ZZ)V

    goto :goto_0
.end method

.method public onRemoveNotificationMsgFromCache()V
    .locals 3

    .prologue
    .line 70
    const-string v1, "PushNotificationManager"

    const-string v2, "RemoveNotificationMsgFromCache"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object v1, p0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 74
    .local v0, "nm":Landroid/app/NotificationManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 75
    return-void
.end method

.method public sendNotification(Lio/rong/notification/PushNotificationMessage;ZZ)V
    .locals 18
    .param p1, "msg"    # Lio/rong/notification/PushNotificationMessage;
    .param p2, "fromPush"    # Z
    .param p3, "isKeepSilent"    # Z

    .prologue
    .line 169
    const/4 v12, 0x0

    .line 170
    .local v12, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v7, "rc_notification_ticker_text"

    const-string/jumbo v15, "string"

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v7, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 171
    .local v14, "tickerText":Ljava/lang/String;
    invoke-direct/range {p0 .. p2}, Lio/rong/notification/PushNotificationManager;->buildPendingIntent(Lio/rong/notification/PushNotificationMessage;Z)Landroid/app/PendingIntent;

    move-result-object v6

    .line 173
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-direct/range {p0 .. p0}, Lio/rong/notification/PushNotificationManager;->getNotificationTitle()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "title":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lio/rong/notification/PushNotificationManager;->getNotificationContent()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "content":Ljava/lang/String;
    const-string v2, "PushNotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send. title:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v2, "PushNotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.os.Build.VERSION.SDK_INT is"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-gt v2, v3, :cond_0

    .line 182
    :try_start_0
    new-instance v13, Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v13, v2, v14, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v12    # "notification":Landroid/app/Notification;
    .local v13, "notification":Landroid/app/Notification;
    :try_start_1
    const-class v8, Landroid/app/Notification;

    .line 185
    .local v8, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "setLatestEventInfo"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v15, Landroid/content/Context;

    aput-object v15, v3, v7

    const/4 v7, 0x1

    const-class v15, Ljava/lang/CharSequence;

    aput-object v15, v3, v7

    const/4 v7, 0x2

    const-class v15, Ljava/lang/CharSequence;

    aput-object v15, v3, v7

    const/4 v7, 0x3

    const-class v15, Landroid/app/PendingIntent;

    aput-object v15, v3, v7

    invoke-virtual {v8, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 186
    .local v10, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    const/4 v3, 0x3

    aput-object v6, v2, v3

    invoke-virtual {v10, v13, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/16 v2, 0x10

    iput v2, v13, Landroid/app/Notification;->flags:I

    .line 189
    const/4 v2, -0x1

    iput v2, v13, Landroid/app/Notification;->defaults:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v12, v13

    .line 197
    .end local v8    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "method":Ljava/lang/reflect/Method;
    .end local v13    # "notification":Landroid/app/Notification;
    .restart local v12    # "notification":Landroid/app/Notification;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 199
    .local v11, "nm":Landroid/app/NotificationManager;
    const/4 v2, 0x0

    invoke-virtual {v11, v2, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 200
    return-void

    .line 190
    .end local v11    # "nm":Landroid/app/NotificationManager;
    :catch_0
    move-exception v9

    .line 191
    .local v9, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 194
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Lio/rong/notification/PushNotificationManager$NotificationHelper;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lio/rong/notification/PushNotificationManager$NotificationHelper;-><init>(Lio/rong/notification/PushNotificationManager;Lio/rong/notification/PushNotificationManager$1;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lio/rong/notification/PushNotificationManager$NotificationHelper;->build(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)Landroid/app/Notification;

    move-result-object v12

    goto :goto_0

    .line 190
    .end local v12    # "notification":Landroid/app/Notification;
    .restart local v13    # "notification":Landroid/app/Notification;
    :catch_1
    move-exception v9

    move-object v12, v13

    .end local v13    # "notification":Landroid/app/Notification;
    .restart local v12    # "notification":Landroid/app/Notification;
    goto :goto_1
.end method

.method public sendPushNotification(Lio/rong/notification/PushNotificationMessage;)V
    .locals 20
    .param p1, "message"    # Lio/rong/notification/PushNotificationMessage;

    .prologue
    .line 81
    const/4 v13, 0x0

    .line 82
    .local v13, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v7, "rc_notification_ticker_text"

    const-string/jumbo v18, "string"

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v7, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 83
    .local v15, "tickerText":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lio/rong/notification/PushNotificationMessage;->getPushTitle()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "title":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "title":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 89
    .restart local v4    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lio/rong/notification/PushNotificationMessage;->getPushContent()Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "content":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v10, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rong://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v17

    .line 93
    .local v17, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v2, "push_message"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "pushContent"

    invoke-virtual/range {p1 .. p1}, Lio/rong/notification/PushNotificationMessage;->getPushContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "pushData"

    invoke-virtual/range {p1 .. p1}, Lio/rong/notification/PushNotificationMessage;->getPushData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "pushId"

    invoke-virtual/range {p1 .. p1}, Lio/rong/notification/PushNotificationMessage;->getPushId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "extra"

    invoke-virtual/range {p1 .. p1}, Lio/rong/notification/PushNotificationMessage;->getExtra()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    .line 99
    .local v16, "uri":Landroid/net/Uri;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v2, v3, v10, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 102
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    const-string v2, "PushNotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send. title:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v2, "PushNotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.os.Build.VERSION.SDK_INT is"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-gt v2, v3, :cond_2

    .line 108
    :try_start_0
    new-instance v14, Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v14, v2, v15, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v13    # "notification":Landroid/app/Notification;
    .local v14, "notification":Landroid/app/Notification;
    :try_start_1
    const-class v8, Landroid/app/Notification;

    .line 111
    .local v8, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "setLatestEventInfo"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v18, Landroid/content/Context;

    aput-object v18, v3, v7

    const/4 v7, 0x1

    const-class v18, Ljava/lang/String;

    aput-object v18, v3, v7

    const/4 v7, 0x2

    const-class v18, Ljava/lang/String;

    aput-object v18, v3, v7

    const/4 v7, 0x3

    const-class v18, Landroid/app/PendingIntent;

    aput-object v18, v3, v7

    invoke-virtual {v8, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 112
    .local v11, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    const/4 v3, 0x3

    aput-object v6, v2, v3

    invoke-virtual {v11, v14, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/16 v2, 0x10

    iput v2, v14, Landroid/app/Notification;->flags:I

    .line 115
    const/4 v2, -0x1

    iput v2, v14, Landroid/app/Notification;->defaults:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v13, v14

    .line 123
    .end local v8    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "notification":Landroid/app/Notification;
    .restart local v13    # "notification":Landroid/app/Notification;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 125
    .local v12, "nm":Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget v2, v0, Lio/rong/notification/PushNotificationManager;->pushNotificationId:I

    invoke-virtual {v12, v2, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 127
    move-object/from16 v0, p0

    iget v2, v0, Lio/rong/notification/PushNotificationManager;->pushNotificationId:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lio/rong/notification/PushNotificationManager;->pushNotificationId:I

    .line 128
    return-void

    .line 116
    .end local v12    # "nm":Landroid/app/NotificationManager;
    :catch_0
    move-exception v9

    .line 117
    .local v9, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Lio/rong/notification/PushNotificationManager$NotificationHelper;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lio/rong/notification/PushNotificationManager$NotificationHelper;-><init>(Lio/rong/notification/PushNotificationManager;Lio/rong/notification/PushNotificationManager$1;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/notification/PushNotificationManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lio/rong/notification/PushNotificationManager$NotificationHelper;->build(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)Landroid/app/Notification;

    move-result-object v13

    goto :goto_0

    .line 116
    .end local v13    # "notification":Landroid/app/Notification;
    .restart local v14    # "notification":Landroid/app/Notification;
    :catch_1
    move-exception v9

    move-object v13, v14

    .end local v14    # "notification":Landroid/app/Notification;
    .restart local v13    # "notification":Landroid/app/Notification;
    goto :goto_1
.end method

.method public storeMsgToCache(Lio/rong/notification/PushNotificationMessage;)V
    .locals 7
    .param p1, "msg"    # Lio/rong/notification/PushNotificationMessage;

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "isContactExist":Z
    const-string v4, "PushNotificationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storeMsgToCache. size is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v4, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 135
    iget-object v4, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/notification/PushNotificationContact;

    .line 136
    .local v0, "contact":Lio/rong/notification/PushNotificationContact;
    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getTargetId()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "targetId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 139
    const-string v4, "PushNotificationManager"

    const-string v5, "This is an error data!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v4, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    :cond_1
    invoke-virtual {v0}, Lio/rong/notification/PushNotificationContact;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    const-string v4, "PushNotificationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add new msg to exist contact:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getPushContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/rong/notification/PushNotificationContact;->AddToMessageList(Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x1

    .line 154
    .end local v0    # "contact":Lio/rong/notification/PushNotificationContact;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "targetId":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_3

    .line 155
    new-instance v0, Lio/rong/notification/PushNotificationContact;

    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getTargetUserName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lio/rong/notification/PushNotificationContact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .restart local v0    # "contact":Lio/rong/notification/PushNotificationContact;
    invoke-virtual {p1}, Lio/rong/notification/PushNotificationMessage;->getPushContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/rong/notification/PushNotificationContact;->AddToMessageList(Ljava/lang/String;)V

    .line 159
    const-string v4, "PushNotificationManager"

    const-string v5, "add new contact to contactList"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v4, p0, Lio/rong/notification/PushNotificationManager;->contactList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v0    # "contact":Lio/rong/notification/PushNotificationContact;
    :cond_3
    return-void
.end method
