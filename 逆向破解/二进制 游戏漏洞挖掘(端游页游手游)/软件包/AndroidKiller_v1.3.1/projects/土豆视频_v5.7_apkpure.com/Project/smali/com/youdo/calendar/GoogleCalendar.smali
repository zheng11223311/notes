.class public Lcom/youdo/calendar/GoogleCalendar;
.super Ljava/lang/Object;


# static fields
.field public static final ACCESS_LEVEL:Ljava/lang/String; = "access_level"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_PRE_8:Landroid/net/Uri;

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final OWNERACCOUNT:Ljava/lang/String; = "ownerAccount"

.field public static final SELECTED:Ljava/lang/String; = "selected"

.field public static final SYNC_ACCOUNT:Ljava/lang/String; = "_sync_account"

.field public static final SYNC_ACCOUNT_TYPE:Ljava/lang/String; = "_sync_account_type"

.field public static final SYNC_DIRTY:Ljava/lang/String; = "_sync_dirty"

.field public static final SYNC_EVENTS:Ljava/lang/String; = "sync_events"

.field public static final SYNC_ID:Ljava/lang/String; = "_sync_id"

.field public static final SYNC_LOCAL_ID:Ljava/lang/String; = "_sync_local_id"

.field public static final SYNC_MARK:Ljava/lang/String; = "_sync_mark"

.field public static final SYNC_TIME:Ljava/lang/String; = "_sync_time"

.field public static final SYNC_VERSION:Ljava/lang/String; = "_sync_version"

.field public static final TIMEZONE:Ljava/lang/String; = "timezone"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:I

.field private isActive:Z

.field private name:Ljava/lang/String;

.field private ownerAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/youdo/calendar/GoogleCalendar;->CONTENT_URI_PRE_8:Landroid/net/Uri;

    const-string v0, "content://com.android.calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/youdo/calendar/GoogleCalendar;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentURI()Landroid/net/Uri;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/youdo/calendar/GoogleCalendar;->CONTENT_URI_PRE_8:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/youdo/calendar/GoogleCalendar;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static retrieve(Landroid/database/Cursor;)Lcom/youdo/calendar/GoogleCalendar;
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Lcom/youdo/calendar/GoogleCalendar;

    invoke-direct {v1}, Lcom/youdo/calendar/GoogleCalendar;-><init>()V

    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/youdo/calendar/GoogleCalendar;->id:I

    const-string v2, "name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youdo/calendar/GoogleCalendar;->name:Ljava/lang/String;

    const-string v2, "displayName"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youdo/calendar/GoogleCalendar;->displayName:Ljava/lang/String;

    const-string v2, "ownerAccount"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youdo/calendar/GoogleCalendar;->ownerAccount:Ljava/lang/String;

    const-string/jumbo v2, "selected"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, v1, Lcom/youdo/calendar/GoogleCalendar;->isActive:Z

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/youdo/calendar/GoogleCalendar;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/youdo/calendar/GoogleCalendar;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/youdo/calendar/GoogleCalendar;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/youdo/calendar/GoogleCalendar;->ownerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/youdo/calendar/GoogleCalendar;->isActive:Z

    return v0
.end method
