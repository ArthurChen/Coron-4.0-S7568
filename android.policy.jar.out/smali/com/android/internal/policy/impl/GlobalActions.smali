.class Lcom/android/internal/policy/impl/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;,
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$Action;,
        Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenshotConnection:Landroid/content/ServiceConnection;

.field private mScreenshotHandler:Landroid/os/Handler;

.field private mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field private mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

.field final mTakeScreenshot:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 80
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 81
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 82
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 84
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotHandler:Landroid/os/Handler;

    .line 85
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    .line 86
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 276
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mTakeScreenshot:Ljava/lang/Runnable;

    .line 330
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 690
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$8;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 715
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$9;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$9;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 725
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$10;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$10;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 738
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$11;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$11;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x103031b

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    .line 93
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v2, "android.intent.action.THEME_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 106
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlobalActions;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->takeScreenShot(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/GlobalActions;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 754
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 758
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 760
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 761
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 762
    return-void

    .line 754
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 130
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    .line 132
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$1;

    const v2, 0x1080313

    const v3, 0x1080312

    const v4, 0x104074f

    const v5, 0x1040183

    const v6, 0x1040184

    const v7, 0x1040185

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/GlobalActions$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$2;

    const v2, 0x1080030

    const v3, 0x104017c

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$3;

    const v2, 0x1080abc

    const v3, 0x104074e

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$4;

    const v2, 0x1080abd

    const v3, 0x104078d

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    .line 245
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const v1, 0x103031b

    invoke-direct {v8, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 247
    .local v8, ab:Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v8, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 251
    .local v9, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 252
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 254
    invoke-virtual {v9, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 256
    return-object v9
.end method

.method private prepareDialog()V
    .locals 4

    .prologue
    .line 260
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 262
    .local v1, silentModeOn:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 263
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 264
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 270
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    return-void

    .line 260
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #silentModeOn:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    .restart local v1       #silentModeOn:Z
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private takeScreenShot(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 286
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 289
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 290
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$6;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/GlobalActions$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/content/Context;)V

    .line 324
    .local v1, conn:Landroid/content/ServiceConnection;
    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 326
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    if-nez v0, :cond_0

    .line 352
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->onPress()V

    .line 355
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    .line 347
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 2
    .parameter "keyguardShowing"
    .parameter "isDeviceProvisioned"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 115
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareDialog()V

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 123
    return-void
.end method
