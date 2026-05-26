pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Services.Pipewire
import qs.assets

Singleton{
    id: audio_out

    PwObjectTracker {
        id: tracker 

        objects: [Pipewire.defaultAudioSink]
    }

    readonly property PwNode defaultSink: Pipewire.defaultAudioSink 

    function getVolumeIcon() {
        return Icons.speakerHigh
    }

    function getVolume() {
        return Math.round(defaultSink.audio.volume * 100)
    }
}
